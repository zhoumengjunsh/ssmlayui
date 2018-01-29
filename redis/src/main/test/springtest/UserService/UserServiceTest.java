package test.springtest.UserService;

import com.papio.yuan.entity.User;
import com.papio.yuan.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.springtest.BaseTest;

public class UserServiceTest extends BaseTest {

    @Autowired
    UserService userService;

    @Test
    public void addUser(){
        User user = new User();
        user.setName("admin3");
        user.setPassword("123456");
        user.setAge(12);
        userService.addUser(user);
    }
}
