package com.papio.yuan.dao;

import com.papio.yuan.entity.User;

import java.util.List;

/**
 * 用户操作类
 *
 * @author zhou_mj
 * @date 2018-01-26
 */
public interface UserDao {

    User findUserById(String id);
    /**
     * 查询用户分页.
     */
    public List findUserList();

    /**
     * 添加用户信息。
     *
     * @param User
     */
    public void addUser(User user);

    /**
     * 删除用户.
     *
     * @param ids
     */
    public void delUser(String ids);

    /**
     * 修改用户.
     *
     * @param User
     */
    public void updateUser(User user);


}
