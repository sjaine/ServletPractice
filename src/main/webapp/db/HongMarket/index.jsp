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
		
		List<Map<String, Object>> goodsList = mysqlService.select("SELECT * FROM `user_goods` ORDER BY `id` DESC;");		
	%>
	
	<div class="wrap">
		<header class="bg-hong text-center p-3">
			<h1 class="text-white font-weight-bold">HONG당무 마켓</h1>
		</header>
		<nav class="bg-hong p-2">
			<ul class="nav nav-fill">
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="/db/HongMarket/index.jsp">리스트</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="/db/HongMarket/input.jsp">물건 올리기</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="p-4 d-flex flex-column">
			<div class="d-flex justify-content-between row row-cols-3 m-0">
				<% for(Map<String, Object> goodsMap:goodsList) { 
					int sellerId = (Integer)goodsMap.get("sellerId");
					List<Map<String, Object>> sellerList = mysqlService.select("SELECT * FROM `seller` WHERE `id`=" + sellerId + ";");
					for(Map<String, Object> sellerMap:sellerList) {
				%>
				<div class="col p-2">
					<div class="product border border-hong p-2">
						<div>
							<img class="w-100" style="object-fit: cover; height: 150px;" src=<%= goodsMap.get("produceImage") %>>
						</div>
						<div>
							<div class="font-weight-bold mt-2"><%= goodsMap.get("title") %></div>
							<div class="text-secondary"><%= goodsMap.get("price") %>원</div>
							<div class="text-hong"><%= sellerMap.get("nickname") %></div>
						</div>
					</div>
				</div>
				<% }
				} %>
			</div>
		</section>
		<footer>
			<div class="small-text text-secondary text-center mb-3">Copyright 2019. HONG All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>