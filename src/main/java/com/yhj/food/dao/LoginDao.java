package com.yhj.food.dao;

import com.yhj.food.pojo.Room;
import com.yhj.food.pojo.Shop;
import com.yhj.food.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LoginDao {
    //注册的方法
    @Insert("insert into user(userName,userPwd,email) values(#{userName},#{userPwd},#{email})")
    void doAdd(@Param("userName") String userName, @Param("email") String email, @Param("userPwd") String userPwd);
    //登录的方法
    @Select("select * from user where userName = #{userName} and userPwd = #{userPwd}")
    User doLogin(@Param("userName")String userName, @Param("userPwd")String userPwd);
    //查询地区
    @Select("select * from area")
    List<User> getArea();
    //首页店铺的查询
    @Select("select * from shop")
    List<Shop> selectShop();
    @Select("select * from shop where shopName like concat('%',#{sourName},'%')")
    List<Shop> selectShopByName(String sourName);
    //查询店铺推广图
    @Select("select url from shop where shopName=#{shopName}")
    String findUrl(String shopName);
    //查询店铺餐品
    @Select("select * from room where shopId in (select shopID from shop where shopName=#{shopName})")
    List<Room> showRoom(String shopName);
}
