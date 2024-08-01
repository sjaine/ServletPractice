package design.jaine.servlet.datebase.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import design.jaine.servlet.common.MysqlService;

@WebServlet("/db/ex/ex02")
public class Ex02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// 접속
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `user_goods`");
		
		for(Map<String, Object> resultMap:resultList) {
			String title = (String)resultMap.get("title");
			int price = (Integer)resultMap.get("price");
			
			out.println("제목: " + title + "가격: " + price);
		}
		
//		try {
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.print("제목: " + title + "가격: " + price);
//				
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		String query = "INSERT INTO `user_good`\n"
//				+ "(`sellerId`, `title`, `price`, `description`)\n"
//				+ "VALUE\n"
//				+ "(3, '고양이 간식 팝니다', 2000, '안먹어서 팔아요');";
//		
//		int count = mysqlService.update(query);
//		
//		out.print("삽입 결과: " + count);
	}
	
}
