package com.yhj.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @作者:YHJ
 * @时间:2018/12/13 9:35
 * @描述:页面控制器
 */

@Controller
@RequestMapping("/elm")
public class pageController {

    //地址导航页的跳转
    @RequestMapping(value = "/areaLogin")
    public String areaLogin(){
        return "areaLogin";
    }
    //登录页面的跳转
    @GetMapping(value = "/login")
    public String login(){
        return "login";
    }

    //注册页面的跳转
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(){
        return "register";
    }

    //支付页面的跳转
    @RequestMapping(value = "/payment/{prise}/{dpName}")
    public ModelAndView payment(@PathVariable String prise, @PathVariable String dpName){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("payment");
        modelAndView.addObject("dpName", dpName);
        modelAndView.addObject("prise", prise);
        modelAndView.addObject("1","/static/images/logo.png");
        return modelAndView;
    }
    //客服页面的跳转

    @RequestMapping(value = "/kefu")
    public String kefu(){
        return "kefu";
    }

}
