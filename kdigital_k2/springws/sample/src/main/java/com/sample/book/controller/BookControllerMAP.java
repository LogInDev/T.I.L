package com.sample.book.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.sample.book.service.BookService;

@Controller
@RequestMapping("/book/*")
public class BookControllerMAP {

    @Autowired
    BookService bookService;
    
    private static final Logger logger = LoggerFactory.getLogger(BookControllerMAP.class);
	
    public BookControllerMAP() {
        System.out.println("@Controller 스프링 자동 생성");
    }
    @RequestMapping(value = "/updateMap", method = RequestMethod.GET)
    public ModelAndView update(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
    	
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/update");
    	return mav;
    }
    @RequestMapping(value = "/deleteMap", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
//    	System.out.println(">>>>>>>>>>"+dMap);
    	this.bookService.delete(dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("redirect:/list");
    	return mav;
    }
    @RequestMapping(value = "/updateMap", method = RequestMethod.POST)
    public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
    	int rs = this.bookService.update(map);
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/detail");
    	
    	return mav;
    }
    @RequestMapping(value = "/detailMap", method = RequestMethod.GET)
    public ModelAndView detail(@RequestParam Map<String, Object> map) {
    	Map<String, Object> dMap = this.bookService.selectDetail(map);
//    	System.out.println(">>>>>>>>>>>"+dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("book/detail");
    	return mav;
    }
    @RequestMapping(value = "/listMap", method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> map) {
    	List<Map<String, Object>> list = this.bookService.selectList(map);
    	ModelAndView mav = new ModelAndView();
    	//request.setAttribute("data",list)의 역할
    	mav.addObject("data", list);
    	//forward의 역할을 해줌.
    	mav.setViewName("book/list");
    	return mav;
    }
    @RequestMapping(value = "/listJsonMap", method = RequestMethod.GET)
    @ResponseBody
    public List<Map<String, Object>> search(@RequestParam Map<String, Object> search, HttpServletResponse response) throws IOException {
    	List<Map<String, Object>> list = this.bookService.selectList(search);
    	return list;
    }
//    @RequestMapping(value = "/listDo", method = RequestMethod.GET)
//    public void search(@RequestParam Map<String, Object> map, HttpServletResponse response) throws IOException {
//    	List<Map<String, Object>> list = this.bookService.selectList(map);
//    	JSONObject data = new JSONObject();
//    	data.put("data", list);
////    	ObjectMapper mapper= new ObjectMapper();
//    	String json = data.toString();
////    	String json = mapper.registerModule(new JavaTimeModule()).writeValueAsString(list);
//    	response.setContentType("application/json"); //json이라고 알려줌 text/html은 html형식으로 보내는것
//    	response.setCharacterEncoding("UTF-8"); //encoding utf-8
//    	PrintWriter out = response.getWriter(); // 통로를 뚫어줌
//    	out.print(json);
//    }
	
    
	@RequestMapping(value = "/helloMap", method = RequestMethod.GET)
	public String hello(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "hello";
	}
	
	@RequestMapping(value = "/createMap", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("book/create");
	}
	
	@RequestMapping(value = "/createMap", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
//		System.out.println(map);
		// service -> dao
		int rs = bookService.insert(map);
		//move
		if(rs==1) {
			//response.sendRedirect와 같은 역할
			mav.setViewName("redirect:/listMap");
		}else {
			mav.setViewName("redirect:/createMap");
		}
		return mav;
	}
    
}
