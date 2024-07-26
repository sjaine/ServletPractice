<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>메뉴 검색</title>
</head>
<body>
	<div class="m-3">
		<h2>메뉴검색</h2>
		<form method="get" action="/jsp/test/test07.jsp">
			<div class="form-inline">
				<input type="text" name="menu" class="form-control mr-2 mb-2">
				<label> <input type="checkbox" name="point" value="check"> 4점 이하 제외</label>
			</div>
			<button type="submit" class="btn btn-success">검색</button>
		</form>
	</div>
</body>
</html>