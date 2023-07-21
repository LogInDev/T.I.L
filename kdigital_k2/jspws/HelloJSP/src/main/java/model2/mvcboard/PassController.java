package model2.mvcboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fileupload.FileUtil;

@WebServlet("/mvcboard/pass.do")
public class PassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		String idx = request.getParameter("idx");
		
		request.setAttribute("mode", mode);
		request.setAttribute("idx", idx);
		request.getRequestDispatcher("/14MVCBoard/Pass.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String mode = request.getParameter("mode");
		String idx = request.getParameter("idx");
		String pass = request.getParameter("pass");
		
		MVCBoardDAO dao = new MVCBoardDAO();
		boolean isCorr = dao.confirmPassword(pass, idx);
		dao.close();
		
		if(isCorr) {//비밀번호 일치
			if(mode.equals("edit")) {//수정 모드
				HttpSession session = request.getSession();
				session.setAttribute("pass", pass);
				response.sendRedirect("/mvcboard/edit.do?idx="+idx);
			}else if(mode.equals("delete")) {//삭제 모드
				dao=new MVCBoardDAO();
				MVCBoardDTO dto = dao.selectView(idx);
				int result = dao.deletePost(idx);
				dao.close();
			}
			
		}else {
			
		}
		
		
	}

}
