package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.one")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		String uri = request.getRequestURI();//요청한 사이트 주소
		int lastSacn = uri.lastIndexOf("/");
		String command = uri.substring(lastSacn);
		//System.out.println(uri);
		if(command.equals("/regist.one")) {
			System.out.println(command);
			registFunc(request);
		}else if(command.equals("/login.one")) {
			System.out.println(command);
			loginFunc(request);
		}else if(command.equals("/freeboard.one")) {
			System.out.println(command);
			freeboardFunc(request);
		}
		request.setAttribute("uri", uri);
		request.setAttribute("commandStr", command);
		request.getRequestDispatcher("/13Servlet/FrontController.jsp")
		.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	void registFunc(HttpServletRequest request) {
		request.setAttribute("resultValue", "<h4>회원가입</h4>");
	}
	
	void loginFunc(HttpServletRequest request) {
		request.setAttribute("resultValue", "<h4>로그인</h4>");
	}
	
	void freeboardFunc(HttpServletRequest request) {
		request.setAttribute("resultValue", "<h4>자유게시판</h4>");
	}

}
