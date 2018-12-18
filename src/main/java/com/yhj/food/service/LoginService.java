package com.yhj.food.service;

import com.yhj.food.pojo.Room;
import com.yhj.food.pojo.Shop;
import com.yhj.food.pojo.User;

import java.util.List;

public interface LoginService {

    //注册的方法
    void doAdd(String userName, String email, String userPwd);
    //登录的方法
    User doLogin(String userName, String userPwd);
    //登录后查询地区
    List<User> getArea();
    //首页的商品查询
    List<Shop> selectShop();
    //模糊查询店铺
    List<Shop> selectShopByName(String sourName);
     //查询店铺推广图
    String findUrl(String shopName);
     //查询店铺餐品
    List<Room> showRoom(String shopName);
}
