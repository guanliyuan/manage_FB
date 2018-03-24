package com.FBmanage.ibs.mapper;


import com.FBmanage.ibs.model.User;
import com.FBmanage.ibs.model.UserInser;

import java.util.List;

/**
 * user
 */
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int updatedeleteUser(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    int updateUserPassword(User user);


    User selectUserByLoginName(String loginName);

    User selectUserById(int userId);

    List<User> selectlist(User user);


    /**
     * 查询是否注册
     * @param tel
     * @return
     */
	List<User> selectBymobile(String tel);

	UserInser selectNickName(UserInser user);
}