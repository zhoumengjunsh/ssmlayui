package com.papio.controller;

import com.papio.yuan.entity.User;
import com.papio.yuan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("mydemo")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/getUserInfo")
    public String getUserInfo(HttpServletRequest request){
        String currentUser = (String)request.getSession().getAttribute("currentUser");
        System.out.println("当前登录的用户为[" + currentUser + "]");
        request.setAttribute("currUser", currentUser);
        return "/user/info";
    }

    //@RequestMapping(value="/addUser")
    public void addUser(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setName(username);
        user.setPassword(password);
        user.setAge(10);
        userService.addUser(user);
    }

}
