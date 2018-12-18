package com.yhj.food.service.impl;

import com.yhj.food.dao.LoginDao;
import com.yhj.food.pojo.Room;
import com.yhj.food.pojo.Shop;
import com.yhj.food.pojo.User;
import com.yhj.food.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Resource
    private LoginDao loginDao;
    //注册的方法
    public void doAdd(String userName, String email, String userPwd) {
         loginDao.doAdd(userName,email,userPwd);
    }

    //登录的方法
    public User doLogin(String userName, String userPwd) {
        return loginDao.doLogin(userName,userPwd);
    }

    //查询地区
    public List<User> getArea() {
        return loginDao.getArea();
    }

    //首页的商品查询
    public List<Shop> selectShop() {
        return loginDao.selectShop();
    }

    //店铺模糊查询
    public List<Shop> selectShopByName(String sourName) {
        return loginDao.selectShopByName(sourName);
    }

    //查询店铺推广图
    public String findUrl(String shopName) {
        return loginDao.findUrl(shopName);
    }

    //查询店铺餐品
    public List<Room> showRoom(String shopName) {
        return loginDao.showRoom(shopName);
    }
}
