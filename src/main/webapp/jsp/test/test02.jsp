<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>BMI 구하기</title>
</head>
<body>
	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight"); 
		
		double weight = Integer.parseInt(weightString);
		double height = Integer.parseInt(heightString);
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		
		String result = "정상";
		
		if(bmi >= 30) {
			result = "비만";
		} else if(bmi >= 25) {
			result = "과체중";
		} else if(bmi >= 18.5) {
			result = "정상"; 
		} else {
			result = "저체중";
		}
	%>
	
	<div class="m-3">
		<h2 class="font-weight-bold">BMI 측정 결과</h2>
		<h1 class="font-weight-lighter">당신은 <span class="text-info"><%= result %></span> 입니다.</h1>
		<div>BMI 수치: <%= bmi %></div>
	</div>
</body>
</html>