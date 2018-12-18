package com.yhj.food.dao;

import com.yhj.food.pojo.Area;
import com.yhj.food.pojo.Shop;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AreaDao {
    //地址选择页
    @Select("select * from area")
    List<Area> getArea();
    @Select("select * from shop")
    List<Shop> selectShop();
}
