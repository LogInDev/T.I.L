package com.mvcboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvcboard.dao.BoardDAO;
import com.mvcboard.vo.BoardVO;

@WebServlet("*.go")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		request.setCharacterEncoding("UTF-8");
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		System.out.println("process()");
		// request path 추출
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(uri);
		
		if(path.equals("/getBoardList.go")) {
//			System.out.println(path);
			//원래 Service호출 - Service에서 DAO호출해야함
			BoardDAO dao = new BoardDAO();
			List<BoardVO> list = dao.getBoardList();
			request.setAttribute("list", list);
			request.getRequestDispatcher("getBoardList.jsp").forward(request, response);
		}else if(path.equals("/getBoard.go")) {
			BoardDAO dao = new BoardDAO();
			int seq = Integer.parseInt(request.getParameter("seq"));
			int rs = dao.updateBoardCount(seq);
			BoardVO vo = dao.getBoard(seq);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("getBoardView.jsp").forward(request, response);
		}else if(path.equals("/updateBoard.go")) {
			BoardDAO dao = new BoardDAO();
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			//int rs = dao.updateBoard(vo)
		}
	}

}
