package com.sample.book.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sample.book.dto.BookDTO;
import com.sample.book.service.BookService;

@Controller

public class BookControllerDTO {

    @Autowired
    BookService bookService;
    
    private static final Logger logger = LoggerFactory.getLogger(BookControllerDTO.class);
	
    public BookControllerDTO() {
        System.out.println("@Controller 스프링 자동 생성");
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public ModelAndView update(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
    	
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/update");
    	return mav;
    }
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
//    	System.out.println(">>>>>>>>>>"+dMap);
    	this.bookService.delete(dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("redirect:./list");
    	return mav;
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
    	int rs = this.bookService.update(map);
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/detail");
    	
    	return mav;
    }
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public ModelAndView detail(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
//    	System.out.println(">>>>>>>>>>>"+dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/detail");
    	return mav;
    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(BookDTO dto) {
    	System.out.println(dto);
    	List<Map<String, Object>> list = this.bookService.selectList(dto);
    	ModelAndView mav = new ModelAndView();
    	//request.setAttribute("data",list)의 역할
    	mav.addObject("data", list);
    	//forward의 역할을 해줌.
    	mav.setViewName("book/list");
    	return mav;
    }
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public ModelAndView searchList(@RequestParam Map<String, Object> map) {
    	List<Map<String, Object>> list = this.bookService.selectList(map);
    	return null;
    }
	
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String hello(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "hello";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("book/create");
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
//		System.out.println(map);
		// service -> dao
		int rs = bookService.insert(map);
		//move
		if(rs==1) {
			//response.sendRedirect와 같은 역할
			mav.setViewName("redirect:./list");
		}else {
			mav.setViewName("redirect:./create");
		}
		return mav;
	}
    
}
