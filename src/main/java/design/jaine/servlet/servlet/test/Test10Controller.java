package design.jaine.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println("<html><head><title>로그인</title></head><body>");
		
		if(!id.equals(userMap.get("id"))) {
			out.println("<h2>id가 일치하지 않습니다.</h2>");
		} else if(!password.equals(userMap.get("password"))) {
			out.println("<h2>password가 일치하지 않습니다.</h2>");
		} else {
			out.println("<h2>" + userMap.get("name") + "님 환영 합니다.</h2>");
		}
		
		out.println("</body></html>");
		
	}
	
}
