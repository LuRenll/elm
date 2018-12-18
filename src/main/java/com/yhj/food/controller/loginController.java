package com.yhj.food.controller;

import com.yhj.food.pojo.Area;
import com.yhj.food.pojo.Room;
import com.yhj.food.pojo.Shop;
import com.yhj.food.pojo.User;
import com.yhj.food.service.AreaService;
import com.yhj.food.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @作者:YHJ
 * @时间:2018/12/13 10:33
 * @描述:登录注册的控制类
 */
@Controller
@RequestMapping("/elm")
public class loginController {

    @Resource
    private LoginService loginService;
    @Resource
    private AreaService areaService;

    //注册用户的方法
    @RequestMapping(value = "/doAdd",method = RequestMethod.POST)
    public String doAdd(@RequestParam String userName, @RequestParam String email, @RequestParam String userPwd) {
        loginService.doAdd(userName, email, userPwd);
        return "login";
    }
    //登录的方法
    @GetMapping("/doLogin")
    public ModelAndView doLogin(@RequestParam("userName") String userName, @RequestParam("userPwd") String userPwd, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        User user = loginService.doLogin(userName, userPwd);
        List<Area> list = areaService.getArea();
        modelAndView.addObject("list", list);
        if (user != null) {
            modelAndView.setViewName("areaLogin");
            session.setAttribute("login",1);
            session.setAttribute("userName",userName);
            //判断是否登录
            return modelAndView;
        } else {
            //System.out.println("<script type='text/javascript'>alert('登录失败！');</script>");
            modelAndView.setViewName("register");
            return modelAndView;
        }
    }

    //首页的登录
    @RequestMapping("/firstLogin/{areaName}")
    public ModelAndView firstLogin(@PathVariable String areaName) {
        ModelAndView modelAndView = new ModelAndView();
        List<Shop> list = loginService.selectShop();
        modelAndView.setViewName("firstLogin");
        modelAndView.addObject("areaName", areaName);
        modelAndView.addObject("shop", list);
        return modelAndView;
    }

    //店铺详情页的跳转
    @RequestMapping(value = "/getShopAll/{shopName}")
    public ModelAndView getShopAll(@PathVariable String shopName){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("shopAll");
        String url=loginService.findUrl(shopName);
        List<Room> list=loginService.showRoom(shopName);
        modelAndView.addObject("list",list);
        modelAndView.addObject("url", url);
        modelAndView.addObject("shopName", shopName);
        return modelAndView;
    }

    //订单页的跳转
    @RequestMapping(value = "/dingDan",method = RequestMethod.GET)
    public ModelAndView dingDan(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("dingDan");
        return modelAndView;
    }
}
