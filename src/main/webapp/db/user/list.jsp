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
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();	
		 
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `new_user` ORDER BY `id` DESC");
		
	%>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">이름</th>
				<th scope="col">생년월일</th>
				<th scope="col">이메일</th>
				<th scope="col">자기소개</th>
			</tr>
		</thead>
		<tbody>
			<% for(Map<String, Object> resultMap:resultList) { %>
			<tr>
				<td><%= (String)resultMap.get("name") %></td>
				<td><%= (String)resultMap.get("yyyymmdd") %></td>
				<td><%= (String)resultMap.get("email") %></td>
				<td><%= (String)resultMap.get("introduce") %></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>