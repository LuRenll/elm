package com.yhj.food.service.impl;

import com.yhj.food.dao.AreaDao;
import com.yhj.food.pojo.Area;
import com.yhj.food.pojo.Shop;
import com.yhj.food.service.AreaService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AreaServiceImpl implements AreaService{

    @Resource
    private AreaDao areaDao;
    /**
     * @作者:YHJ
     * @时间:2018/12/13 10:21
     * @描述:查询地区的方法
     */
    @Override
    public List<Area> getArea() {
        return areaDao.getArea();
    }

    @Override
    public List<Shop> selectShop() {
        return areaDao.selectShop();
    }
}
