package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public HelloServlet() {
        super();
       
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//get
    	System.out.println("doGet()");
    	String name = request.getParameter("name");
    	System.out.println(name);
    	HttpSession session = request.getSession();
    	session.setAttribute("UserName", name);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		String id = request.getParameter("id");
    	System.out.println(id);
    	//response.sendRedirect("/test/hello.jsp?name="+id);
    	//jsp가 없었다면...
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter writer = response.getWriter();
    	
    	writer.println("<html lang='ko'>");	
    	writer.println("<head><title>Servlet Html</title></haed>");
    	writer.println("<body>");
    	writer.println("<h1>");
    	writer.println("ID :" +id);
    	writer.println("</h1>");
    	writer.println("</body>");
    	writer.println("<html>");
    	writer.close();
	}
}
