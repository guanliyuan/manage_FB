package com.FBmanage.ibs.service.Impl;

import com.FBmanage.ibs.mapper.UserMapper;
import com.FBmanage.ibs.model.User;
import com.FBmanage.ibs.model.UserInser;
import com.FBmanage.ibs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
//
//    @Autowired
//    private UserMapper userMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    /**
     * 查询用户信息
     * @param userId
     * @return
     */
    @Override
    public User selectUserById(Integer userId) {
//        return userMapper.selectByPrimaryKey(userId);
        return null;
    }

    @Override
    public User selectUserByLoginName(String loginName) {
        return null;
    }

    @Override
    public int updateUserInfo(User user) {
        return 0;
    }

    @Override
    public int updateUserPassword(User user) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(User user) {
        return 0;
    }

    @Override
    public int insert(UserInser user) {
        return 0;
    }

    @Override
    public Object selectlist(User user) {
        return null;
    }
}
