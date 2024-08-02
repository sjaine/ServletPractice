<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="design.jaine.servlet.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
</head>
<body>	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		List<Map<String, Object>> sellerList = mysqlService.select("SELECT * FROM `seller`;");
	
	%>
	<div class="wrap">
		<header class="bg-hong text-center p-3">
			<h1 class="text-white font-weight-bold">HONG당무 마켓</h1>
		</header>
		<nav class="bg-hong p-2">
			<ul class="nav nav-fill">
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="/db/HongMarket/index.jsp">리스트</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">물건 올리기</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="p-4">
			<div class="display-4">물건 올리기</div>
			<form method="get" action="/db/hongdangmoo" class="form-group">
				<div class="form-inline mt-4">
					<select class="custom-select mr-4" name="sellerId">
						<option selected>-아이디 선택-</option>
						<% for(Map<String, Object> sellerMap:sellerList) { %>
						<option value=<%= (Integer)sellerMap.get("id") %>><%= (String)sellerMap.get("nickname") %></option>
						<% } %>
					</select>
					<input type="text" class="form-control mr-4" name="title" placeholder="제목">
					<input type="text" class="form-control" name="price" placeholder="가격">
					<div class="input-group-append">
					  <span class="input-group-text">원</span>
					</div>
				</div>
				<br>
				<textarea class="form-control" name="description" rows="5" class="w-100"></textarea>
				<br>
				<input type="text" class="form-control" name="produceImage" placeholder="이미지 URL">
				<br>
				<button type="submit" class="btn btn-secondary w-100">저장</button>
			</form>
		</section>
		<footer>
			<div class="small-text text-secondary text-center mb-3">Copyright 2019. HONG All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>