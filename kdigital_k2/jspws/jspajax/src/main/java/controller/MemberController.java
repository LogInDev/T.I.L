package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import mem.dao.MbMemberDAO;
import membership.MemberDAO;
import membership.MemberDTO;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(uri);
		System.out.println(path);
		if(path.equals("/index.do")) {
			response.sendRedirect("index.jsp");
		}else if(path.equals("/getMember.do")) {
			String id = request.getParameter("id");
			MemberDAO dao = new MemberDAO();
			MemberDTO dto = dao.getMemberDTO(id);
			//			System.out.println(dto);
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("getMember.jsp").forward(request, response);
		}else if(path.equals("/getMemberJson.do")) {
			String id = request.getParameter("id");
			MemberDAO dao = new MemberDAO();
			MemberDTO dto = dao.getMemberDTO(id);
			//		System.out.println(dto);
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(dto);
			//		System.out.println(json);
			//json -> 브라우저로 보내기
			//ajax에 넣는 url은 직접 값이 보여야함.
			response.setContentType("application/json"); //json이라고 알려줌 text/html은 html형식으로 보내는것
			response.setCharacterEncoding("UTF-8"); //encoding utf-8
			PrintWriter out = response.getWriter(); // 통로를 뚫어줌
			out.print(json);
		}else if(path.equals("/getMemberList.do")) {
			String id = request.getParameter("id");
			MemberDAO dao = new MemberDAO();
			List<MemberDTO> mList = dao.selectList();
			System.out.println(mList);
			request.setAttribute("mList", mList);
			request.getRequestDispatcher("getMemberList.jsp").forward(request, response);
		}else if(path.equals("/getMemberListJson.do")) {
			MemberDAO dao = new MemberDAO();
			List<MemberDTO> mList =  dao.selectList();
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(mList);
			System.out.println(json);
			//json -> 브라우저로 보내기
			//ajax에 넣는 url은 직접 값이 보여야함.
			response.setContentType("application/json"); //json이라고 알려줌 text/html은 html형식으로 보내는것
			response.setCharacterEncoding("UTF-8"); //encoding utf-8
			PrintWriter out = response.getWriter(); // 통로를 뚫어줌
			out.print(json);
		}else if(path.equals("/getMemberListMybatis.do")) {
			MbMemberDAO dao = new MbMemberDAO();
			List<MemberDTO> list = dao.getMemberList();
			request.setAttribute("list", list);
			request.getRequestDispatcher("getMemberListMybatis.jsp").forward(request, response);
		}else if(path.equals("/getMemberMybatis.do")) {
			String id = request.getParameter("id");
			MbMemberDAO dao = new MbMemberDAO();
			MemberDTO dto = dao.getMember(id);
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("/getMemberMybatis.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
