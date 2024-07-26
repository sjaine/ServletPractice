<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>연산 결과</title>
</head>
<body>
	<%
		String num1String = request.getParameter("num1");
		String num2String = request.getParameter("num2");
		
		int num1 = Integer.parseInt(num1String);
		int num2 = Integer.parseInt(num2String);
		
		String operator = request.getParameter("operator");
		
		double result = 0;
		
		if(operator.equals("add")) {
			result = num1 + num2;
			operator = "+";
		} else if(operator.equals("substract")) {
			result = num1 - num2;
			operator = "-";
		} else if(operator.equals("multiply")) {
			result = num1 * num2;
			operator = "X";
		} else if(operator.equals("divide")) {
			result = (double)num1 / num2;
			operator = "/";
		}
		
	%>
	
	<div class="m-3">
		<h2>계산 결과</h2>
		<div class="display-4"><%= num1 %> <%= operator %> <%= num2 %> = <span class="text-primary"><%= result %></span></div>
	</div>
</body>
</html>