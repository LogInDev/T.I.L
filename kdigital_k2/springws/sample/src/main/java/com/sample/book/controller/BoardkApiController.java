package com.sample.book.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sample.book.dto.BoardDTO;
import com.sample.book.service.BoardService;
@RestController
@RequestMapping("/boardapi/*")
public class BoardkApiController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/getList", method = RequestMethod.GET)
    public List<BoardDTO> search(@RequestParam Map<String, Object> map, HttpServletResponse response) throws IOException {
    	List<BoardDTO> list = this.service.selectList(map);
    	
    	return list;
    }
	
}
