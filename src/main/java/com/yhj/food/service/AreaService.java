package com.yhj.food.service;

import com.yhj.food.pojo.Area;
import com.yhj.food.pojo.Shop;

import java.util.List;

public interface AreaService {
    //查询地区信息
    List<Area> getArea();

    List<Shop> selectShop();
}
