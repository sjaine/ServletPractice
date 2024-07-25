<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>사칙 연산</title>
</head>
<body>
	<div class="m-3">
		<h2>사칙 연산</h2>
		<form method="post" action="/jsp/test/test04.jsp" class="form-inline">
			<input type="text" name="num1" class="form-control mr-2">
			<select name="operator" class="form-control mr-2">
				<option value="add">+</option>
				<option value="substract">-</option>
				<option value="multiply">X</option>
				<option value="divide">/</option>
			</select>
			<input type="text" name="num2" class="form-control mr-2">
			<button type="submit" class="btn btn-success">계산</button>
		</form>
	</div>
</body>
</html>