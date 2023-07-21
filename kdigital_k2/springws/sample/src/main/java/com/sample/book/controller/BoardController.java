package com.sample.book.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.sample.book.dto.BoardDTO;
import com.sample.book.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    @Autowired
    BoardService boardService;
    
    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    public BoardController() {
        System.out.println("@Controller 스프링 자동 생성");
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public ModelAndView update(BoardDTO boardDTO) {
    	BoardDTO dMap = this.boardService.selectDetail(boardDTO);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("board/update");
    	return mav;
    }
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(BoardDTO boardDTO) {
    	BoardDTO dMap = this.boardService.selectDetail(boardDTO);
//    	System.out.println(">>>>>>>>>>"+dMap);
    	this.boardService.delete(dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("redirect:./list");
    	return mav;
    }
    @PostMapping(value = "/deletebtn")
    @ResponseBody
    public int deletebtn(@RequestBody List<Map<String, String>> bookList) {
		int rs =  this.boardService.deleteCheck(bookList);
		 return rs;
    	
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updatePost(BoardDTO boardDTO) {
    	int rs = this.boardService.update(boardDTO);
    	BoardDTO dMap = this.boardService.selectDetail(boardDTO);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("board/detail");
    	
    	return mav;
    }
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public ModelAndView detail(BoardDTO boardDTO) {
    	this.boardService.updateCnt(boardDTO);
    	BoardDTO dMap = this.boardService.selectDetail(boardDTO);
//    	System.out.println(">>>>>>>>>>>"+dMap);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("map", dMap);
    	mav.setViewName("board/detail");
    	return mav;
    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> map) {
    	List<BoardDTO> list = this.boardService.selectList(map);
    	ModelAndView mav = new ModelAndView();
    	//request.setAttribute("data",list)의 역할
    	mav.addObject("data", list);
    	//forward의 역할을 해줌.
    	mav.setViewName("board/list");
    	return mav;
    }
//    @RequestMapping(value = "/listJson", method = RequestMethod.GET)
//    @ResponseBody
//    public List<BoardDTO> search(@RequestParam Map<String, Object> map, HttpServletResponse response) throws IOException {
//    	List<BoardDTO> list = this.boardService.selectList(map);
//    	return list;
//    }
    @RequestMapping(value = "/listJson", method = RequestMethod.GET)
    public void search(@RequestParam Map<String, Object> map, HttpServletResponse response) throws IOException {
    	List<BoardDTO> list = this.boardService.selectList(map);
//    	JSONObject data = new JSONObject();
//    	data.put("data", list);
    	ObjectMapper mapper= new ObjectMapper();
//    	String json = data.toString();
    	String json = mapper.registerModule(new JavaTimeModule()).writeValueAsString(list);
    	response.setContentType("application/json"); //json이라고 알려줌 text/html은 html형식으로 보내는것
    	response.setCharacterEncoding("UTF-8"); //encoding utf-8
    	PrintWriter out = response.getWriter(); // 통로를 뚫어줌
    	out.print(json);
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
		return new ModelAndView("board/create");
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(BoardDTO boardDTO) {
		ModelAndView mav = new ModelAndView();
//		System.out.println(map);
		// service -> dao
		int rs = boardService.insert(boardDTO);
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
