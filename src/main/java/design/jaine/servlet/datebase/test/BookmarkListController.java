package design.jaine.servlet.datebase.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import design.jaine.servlet.common.MysqlService;

@WebServlet("/db/bookmark")
public class BookmarkListController extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		
		mysqlService.update(query);
		
		response.sendRedirect("/db/bookmark/list.jsp");
	}
}
