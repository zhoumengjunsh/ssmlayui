package com.papio.yuan.service.impl;

import com.papio.yuan.dao.UserDao;
import com.papio.yuan.entity.User;
import com.papio.yuan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findUserById(String id) {
        return userDao.findUserById(id);
    }

    @Override
    public List findUserList() {
        return userDao.findUserList();
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void delUser(String ids) {
         userDao.delUser(ids);
    }

    @Override
    public void updateUser(User user) {
         userDao.updateUser(user);
    }
}
