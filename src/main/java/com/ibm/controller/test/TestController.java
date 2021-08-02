package com.ibm.controller.test;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.ibm.bean.UserBean;

import redis.clients.jedis.Jedis;

@Controller
public class TestController{
	public static void main(String[] args) {
		SpringApplication.run(TestController.class, args);
		String s1 = "runoobs1 == s2 is:";
	    String s2 = "runoob";
	    String s3 = "runoobs1 == s2 is:";
	    System.out.println(s2 +"s1 == s2 is:");
	    System.out.println(s1 == s2 +"s1 == s2 is:");
	    System.out.println(s1 == s3);
	    
	}
	@RequestMapping("/main")
	public ModelAndView main(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/main");
		
		return mv;
		
	}
	@RequestMapping("/test")
	public ModelAndView firstDemo(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/test");
		
		return mv;
		
	}
	@RequestMapping("/kuai8View")
	public ModelAndView kuai8View(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/menu/kuai8View");
		
		return mv;
		
	}
	@RequestMapping("/bootstrap")
	public ModelAndView bootstrap(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/menu/bootstrap");
		
		return mv;
		
	}
	@RequestMapping("/test2")
	@ResponseBody
	public UserBean test2(){
		
		UserBean user = new UserBean();
		user.setUser("濮滀笘鏉�");
		return user;
		
	}
	@RequestMapping("/goReact")
	public ModelAndView goReact(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/react/reactDemo");
		return mv;
		
	}
	@RequestMapping("/goReact2")
	public ModelAndView goReact2(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/react/reactDemo2");
		return mv;
		
	}
	@RequestMapping("/goReact3")
	public ModelAndView goReact3(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/react/reactDemo3");
		return mv;
		
	}
	private static int cnt ;
	@RequestMapping("/goReact4")
	public ModelAndView goReact4(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		cnt ++;
		if(cnt < 3){
			System.out.println("count::"+cnt);
		}else{
			cnt = 0;
		}
		mv.addObject("cnt",cnt);
		mv.setViewName("/react/reactDemo4");
		return mv;
		
	}
	@RequestMapping("/mima")
	public ModelAndView mima(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		cnt ++;
		if(cnt < 3){
			System.out.println("count::"+cnt);
		}else{
			cnt = 0;
		}
		
		mv.addObject("cnt",cnt);
		mv.setViewName("/menu/mima");
		return mv;
		
	}
	@RequestMapping(value = "/getImageList")
	@ResponseBody
	public String getImageList() {
	    
		
		
	    return "success";
	}
	@RequestMapping("/redis")
	public ModelAndView redis(@ModelAttribute UserBean user,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		//连接本地的 Redis 服务
        Jedis jedis = new Jedis("localhost");
        // 如果 Redis 服务设置来密码，需要下面这行，没有就不需要
        // jedis.auth("123456"); 
        System.out.println("连接成功");
        //查看服务是否运行
        System.out.println("服务正在运行: "+jedis.ping());
		mv.setViewName("/menu/redis");
		
		return mv;
		
	}
	@RequestMapping("/success")
	public ModelAndView cart(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/pay/success");
		return mv;
		
	}
}
