<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="design.jaine.servlet.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>즐겨찾기 조회</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `bookmark` ORDER BY `id` DESC;");
	%>
	
	<div class="text-center">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">사이트</th>
					<th scope="col">사이트 주소</th>
				</tr>
			</thead>
			<tbody>
				<% for(Map<String, Object> resultMap:resultList) { %>
				<tr>
					<td><%= (String)resultMap.get("name") %></td>
					<td><a href="<%= resultMap.get("url") %>" class="text-primary"><%= resultMap.get("url") %></a></td>
					<td class="btn btn-success"><a href="/db/bookmark/delete?id=<%= resultMap.get("id") %>" class="text-white">삭제</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>
	</div>
</body>
</html>