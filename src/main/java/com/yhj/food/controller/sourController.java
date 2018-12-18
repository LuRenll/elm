package com.yhj.food.controller;

import com.yhj.food.pojo.Shop;
import com.yhj.food.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/sour")
public class sourController {
    @Resource
    private LoginService loginService;
    @RequestMapping("/doSource")
    public ModelAndView doSource(@RequestParam("sourName") String sourName) {
        ModelAndView modelAndView = new ModelAndView();
        List<Shop> list = loginService.selectShopByName(sourName);
        modelAndView.setViewName("/firstLogin");
        modelAndView.addObject("shop",list);
        return modelAndView;

    }
}
