package com.FBmanage.ibs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.FBmanage.ibs.aop.WriteLog;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.FBmanage.common.constant.Constant;
import com.FBmanage.common.utils.CaptchaUtil;
import com.FBmanage.common.utils.MD5;
import com.FBmanage.common.utils.Message;
import com.FBmanage.ibs.model.User;
import com.FBmanage.ibs.service.UserService;

/**
 * 增加跳转页面的方法 增加发送短信的接口 增加根据手机短信修改密码 实现中
 */
@Controller
@RequestMapping("/user")
public class UserController {

	private Logger log = Logger.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@Autowired
	protected HttpSession session;

	protected HttpServletRequest request;

	/**
	 * 获取验证码
	 * 
	 * @param response
	 * @param session
	 */
	@RequestMapping(value = "/captcha")
	public void getCaptcha(HttpServletResponse response, HttpSession session) {
		try {
			String s = CaptchaUtil.getChallangeAndWriteImage(response
					.getOutputStream());
			response.flushBuffer();
			session.setAttribute(Constant.SESSION_CAPTCHA, s);
		} catch (IOException ex) {
			throw new RuntimeException("IOError writing file to output stream",
					ex);
		}
	}

	/**
	 * 跳转页面至个人中心
	 * 
	 * @return
	 */
	@RequestMapping("/IndexUser")
	public String IndexUser(Integer id, HttpSession session) {
		User user = userService.selectUserById(id);
		session.setAttribute("user", user);
		return "html/HomePage";
	}

	/**
	 * 登录
	 * 
	 * @param tel
	 * @param password
	 * @param captcha
	 * @param request
	 * @return
	 */

	@RequestMapping("/login")
	@WriteLog(desc="登录")
	public String login(String job, String password, String captcha,
			HttpServletRequest request) {
		if (job == null || "".equals(job.trim()) || job.length() != 6) {
			return loginReturn("/login.jsp", "用户名为空", request);
		}
		if (password == null || "".equals(password.trim())) {
			return loginReturn("/login.jsp", "登录密码为空", request);
		}
	/*	if (captcha == null || "".equals(captcha.trim())) {
			return loginReturn("/login.jsp", "验证码为空", request);
		}
		// 验证验证码是否正确
		String sessionCaptcha = (String) request.getSession().getAttribute(
				Constant.SESSION_CAPTCHA);
		if (!captcha.equals(sessionCaptcha)) {
			return loginReturn("/login.jsp", "验证码错误", request);
		}*/
		User user = userService.selectUserByLoginName(job);
		if (user == null) {
			return loginReturn("/login.jsp", "用户名或密码错误", request);
		}
		// 验证密码
		String md5Pass = MD5.getMD5(password);
		if (md5Pass.equals(user.getPassword())) {
		/*	int typeUser = user.getType();
			if (user.getName() == null || "".equals(user.getName())) {
				user.setName(user.getLoginName());
			}*/
			request.getSession().setAttribute(Constant.SESSION_USER_INFO, user);
			/*if (typeUser == 2) {
				return "html/HomePage";
			}*/

		} else {
			return loginReturn("/login.jsp", "用户名或密码错误", request);
		}
		// return "buildings-list";
		return "html/HomePage";
	}

	/**
	 * @Author lccsetsun
	 * @Date 2018/1/16
	 * @Description login
	 */
	@RequestMapping("/loginOut")
	@WriteLog(desc="退出")
	public void loginOut(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		Enumeration<?> en = session.getAttributeNames();
		while (en.hasMoreElements()) {
			session.removeAttribute(en.nextElement().toString());
		}
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println("<html>");
			out.println("<script>");
			out.println("window.open ('" + request.getContextPath()
					+ "/login.jsp','_top')");
			out.println("</script>");
			out.println("</html>");
		} catch (IOException e) {
			log.error(e.getMessage());
		}
	}

	/**
	 * @Author lccsetsun
	 * @Date 2018/1/16
	 * @Description login
	 */
	@RequestMapping("/UpdatePass")
	public String UpdatePass() {
		// User user = userService.selectUserById(id);
		// request.getSession().setAttribute(Constant.SESSION_USER_INFO, user);
		return "UpdatePass";
	}

	private String loginReturn(String url, String errorMessage,
			HttpServletRequest request) {
		request.getSession().setAttribute(Constant.USER_LOGIN_ERROR_MESSAGE,
				errorMessage);
		return "redirect:" + url;
	}

	/**
	 * 修改用户基本信息
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/UpdataToUser")
	@WriteLog(desc="修改用户信息")
	public Message UpdataToUser(User user) {
		try {
			int i = userService.updateByPrimaryKey(user);
			if (i > 0) {
				return Message.success("修改成功");
			}
			return Message.error("修改失败");
		} catch (Exception e) {
			e.printStackTrace();
			return Message.error("修改失败");
		}
	}

	/**
	 * 修改用户密码
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = { "/UpdataTopassword" }, method = { RequestMethod.POST })
	@ResponseBody
	@WriteLog(desc="修改密码")
	public int UpdataToPassword(String newPas, String pas,
			HttpServletRequest request) {

		User user = (User) request.getSession().getAttribute(
				Constant.SESSION_USER_INFO);
		if (user == null) {
			return 0;
		}

		if (!MD5.getMD5(pas).equals(user.getPassword())) {
			return 1;
		}
		user.setPassword(MD5.getMD5(newPas));
		try {
			userService.updateUserPassword(user);
			return 3;
		} catch (Exception e) {
			log.error("修改密码失败，数据库异常");
			return 2;
		}

	}
}
