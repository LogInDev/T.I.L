package model2.mvcboard;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import utils.BoardPage;
import utils.JSFunction;

public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()");
		req.getRequestDispatcher("/14MVCBoard/Write.jsp").forward(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		String saveDirectory = request.getServletContext().getRealPath("/Uploads");//저장할 디렉터리
		//.getServletContext() : 현재 프로젝트 || Context : 관리하는 범위(한 프로젝트의 범위)
		ServletContext application = getServletContext();
		int maxPostSize = Integer.parseInt(application.getInitParameter("maxPostSize"));
		String encoding = "UTF-8";
		//1. MultipartRequest 객체 생성
		MultipartRequest mr = new MultipartRequest(request, saveDirectory,
				maxPostSize, encoding);
		if(mr == null) {
			JSFunction.alertLocation(response, "첨부파일 용량초과", "/mvcboard/write.do");
			return;
		}
		String name = mr.getParameter("name");
		String title = mr.getParameter("title");
		String content = mr.getParameter("content");
		String ofile = mr.getParameter("ofile");
		String pass = mr.getParameter("pass");
		MVCBoardDTO dto = new MVCBoardDTO();
		dto.setName(name);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setOfile(ofile);
		dto.setPass(pass);
		System.out.println(dto);

		//2. 새로운 파일명 생성
		String fileName = mr.getFilesystemName("ofile"); //현재 파일 이름
		if(fileName != null) {		//파일 업로드
			String ext = fileName.substring(fileName.lastIndexOf(".")); //파일 확장자
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String newFileName = now + ext; // 새로운 파일 이름("업로드일시. 확장자")

			//3. 파일명 변경
			File oldFile = new File(saveDirectory + File.separator + fileName);
			File newFile = new File(saveDirectory + File.separator + newFileName);
			oldFile.renameTo(newFile);
			dto.setOfile(fileName);
			dto.setSfile(newFileName);
			
		}
		
		// db insert
		MVCBoardDAO dao = new MVCBoardDAO();
		int result = dao.insertWrite(dto);
		dao.close();
		
		if(result ==1) {
			response.sendRedirect("/mvcboard/list.do");
		}else {
			response.sendRedirect("/mvcboard/write.do");
			
		}
		
	}

}
