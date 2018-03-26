package com.FBmanage.ibs.mapper;

import com.FBmanage.ibs.model.User;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByTel(String job);
}