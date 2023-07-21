package com.sample.book.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.book.dto.TodayDTO;
import com.sample.book.service.TodayService;

@Controller
@RequestMapping("/check/*")
public class TodayController {

    @Autowired
    TodayService todayService;
    
    private static final Logger logger = LoggerFactory.getLogger(TodayController.class);
	
    public TodayController() {
        System.out.println("@Controller 스프링 자동 생성");
    }
    
    @RequestMapping(value = "/today", method = RequestMethod.GET)
    public String today() {
    	return "/board/today";
    }
    
    @RequestMapping(value = "/insertJson", method = RequestMethod.GET)
    @ResponseBody
    public int insert(TodayDTO dto) {
    	int rs = this.todayService.insert(dto);
    	return rs;
    }
    
    @RequestMapping(value = "/selectJson", method = RequestMethod.GET)
    @ResponseBody
    public List<TodayDTO>  selectList(HttpServletResponse response) {
    	List<TodayDTO> list =  this.todayService.selectList();
//    	System.out.println(">>>>>>"+list);
    	return list;
    }
    
}
