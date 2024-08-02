package design.jaine.servlet.datebase.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import design.jaine.servlet.common.MysqlService;

@WebServlet("/db/hongdangmoo")
public class MarketController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String sellerId = request.getParameter("sellerId");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String url = request.getParameter("produceImage");
		
		String query = "INSERT INTO `user_goods` \r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `produceImage`)\r\n"
				+ "VALUE\r\n"
				+ "(" + sellerId + ", '" + title + "'," + price +", '" + description + "', '" + url + "');";
		
		mysqlService.update(query);
		
		response.sendRedirect("/db/HongMarket/index.jsp");
	}
}
