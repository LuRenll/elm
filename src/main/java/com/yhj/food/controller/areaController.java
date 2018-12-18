package com.yhj.food.controller;

import com.yhj.food.pojo.Area;
import com.yhj.food.service.AreaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @作者:YHJ
 * @时间:2018/12/13 9:50
 * @描述:地区控制器
 */
@Controller
@RequestMapping("/elm")
public class areaController {

    @Resource
    private AreaService areaService;
    /**
     * @作者:YHJ
     * @时间:2018/12/13 9:37
     * @类名:地址导航页的路径
     * @描述:
     */

    @RequestMapping(value = "/areaLogin",method = RequestMethod.GET)
    public ModelAndView hai(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("areaLogin");
        List<Area> list = areaService.getArea();
        modelAndView.addObject("list", list);
        session.setAttribute("login",456);
        return modelAndView;
    }
}
