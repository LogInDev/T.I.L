package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;

public class MemberAuth extends HttpServlet {
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException {
		dao = new MemberDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		
		//web.xml
		String admin_id = this.getInitParameter("admin_id");
		
		//get
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		//System.out.println("id==="+id);
		//System.out.println("pass==="+pass);
		
		MemberDTO dto = dao.getMemberDTO(id, pass);
		//System.out.println(dto);
		String name = dto.getName();
		
		if(name != null) {		//회원	
			request.setAttribute("authMessage", name + " 회원님 반갑^^");
		}else {//관리자 or 비회원
			if(admin_id.equals(id)) {
				request.setAttribute("authMessage", name + " 관리자님 반갑^^");
			}else {
				request.setAttribute("authMessage", name + " 비회원님 회원가입해주세요^^");
			}
		}
		
		request.getRequestDispatcher("/13Servlet/MemberAuth.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@Override
	public void destroy() {
		dao.close();
	}
}
