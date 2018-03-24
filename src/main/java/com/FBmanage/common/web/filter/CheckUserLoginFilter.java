package com.FBmanage.common.web.filter;

import com.FBmanage.common.constant.Constant;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class CheckUserLoginFilter implements Filter {

	private List<Pattern> notFilterPatterns = new ArrayList<Pattern>();
	private String loginURL;

	private static final Log LOG = LogFactory
			.getLog(CheckUserLoginFilter.class);

	@Override
	public void init(FilterConfig cfg) throws ServletException {
		String notFilterURIStr = cfg.getInitParameter("notFilterURIs");
		String loginURL = cfg.getInitParameter("loginURL");
		if (loginURL != null) {
			this.loginURL = loginURL;
			this.notFilterPatterns.add(Pattern.compile("/" + loginURL));
		} else {
			LOG.info("没有配置loginURL......");
		}
		if (notFilterURIStr != null) {
			String[] strs = notFilterURIStr.split(",");
			for (String str : strs) {
				this.notFilterPatterns.add(Pattern.compile(str));
			}
		}

	}

	@Override
	public void doFilter(ServletRequest servletRequest,
						 ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		HttpSession session = request.getSession();

		setBasePath(request);

		String requestURI = getRequestURI(request);

		if (!this.isMatch(requestURI)) {
			// 是需要验证登录的URI
			Object sessionUser = session
					.getAttribute(Constant.SESSION_USER_INFO);

			if (sessionUser == null) {
				// 没有登录
				response.sendRedirect(Constant.BASE_PATH + loginURL);
				return;
			}
			// else {
			// List<String> urls = (List<String>) session
			// .getAttribute(Constant.Session.SESSION_USER_RESOURCES_URLS);
			// Map<String, Resources> allUrls = (Map<String, Resources>) session
			// .getAttribute(Constant.Session.SESSION_ALL_RESOURCES_URLS);
			// if (allUrls != null) {
			// Resources resources = allUrls.get(requestURI);
			// if (resources != null) { // 需要保护
			// if (urls != null) {
			// if (!urls.contains(requestURI)) { // 未授权
			// response.sendRedirect("403.jsp");
			// }
			// }
			// }
			// }
			// }
		}
		chain.doFilter(servletRequest, servletResponse);

	}

	/**
	 * 获取请求URL，相对于context的以/开头的uri。 <br />
	 * 比如 /M/c/i/index 获得的是 /c/i/index
	 * 
	 * @param request
	 * @return
	 */
	private String getRequestURI(HttpServletRequest request) {
		String path = request.getContextPath();
		String requestURI = request.getRequestURI();
		requestURI = requestURI.substring(requestURI.indexOf(path)
				+ path.length());
		return requestURI;
	}

	private void setBasePath(HttpServletRequest request) {
		// 设置BASE_PATH
		if ("".equals(Constant.BASE_PATH)) {
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/";
			Constant.BASE_PATH = basePath;
		}
	}

	private boolean isMatch(String requestURI) {
		for (Pattern pattern : notFilterPatterns) {
			if (pattern.matcher(requestURI).matches()) {
				return true;
			}
		}
		return false;
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

}
