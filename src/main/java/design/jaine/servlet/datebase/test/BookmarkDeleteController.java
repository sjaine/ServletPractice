package design.jaine.servlet.datebase.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import design.jaine.servlet.common.MysqlService;

@WebServlet("/db/bookmark/delete")
public class BookmarkDeleteController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		
		String id = request.getParameter("id");
		
		String delete = "DELETE FROM `bookmark` WHERE `id`=" + id + ";";
		
		mysqlService.update(delete);
		
		response.sendRedirect("/db/bookmark/list.jsp");
	}
}
