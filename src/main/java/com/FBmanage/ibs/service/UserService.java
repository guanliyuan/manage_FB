package com.FBmanage.ibs.service;


import com.FBmanage.ibs.model.User;
import com.FBmanage.ibs.model.UserInser;


public interface UserService {

	int deleteByPrimaryKey(Integer id);

	User selectUserById(Integer userId) ;

	/**
	 * 登录 检查用户名
	 * @param loginName
	 * @return
	 */
	User selectUserByLoginName(String loginName);

	int updateUserInfo(User user);

	int updateUserPassword(User user);

	int updateByPrimaryKey(User user);

	int insert(UserInser user);

	Object selectlist(User user);
}
