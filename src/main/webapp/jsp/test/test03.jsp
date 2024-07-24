<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
	<%
		String check = request.getParameter("check");
		Date now = new Date();
		
		SimpleDateFormat timeFormatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat dateFormatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String result="0";
		
		if(check.equals("time")) {
			result = "오늘 날짜 " + timeFormatter.format(now);
		} else {
			result = "현재 시간 " + dateFormatter.format(now);
		}
	%>
	
	<h2><%= result %></h2>
</body>
</html>