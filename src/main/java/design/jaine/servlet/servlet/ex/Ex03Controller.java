package design.jaine.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
		// 이름, 나이
//		out.println(name + " " + age);		
		// response 에 데이터만 담아서 보내야 하는 경우
		// 데이터를 표현하는 규격을 통해 문자열을 담는다.
		// {"name": "김인규", "age": 31}
		out.println("{\"name\": \"" + name + "\", \"age\": " + age + " }");
		
	}
}
