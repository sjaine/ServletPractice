<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<div class="m-3">
		<h2>길이 변환</h2>
		
		<form method="post" action="/jsp/test/test05.jsp" class="form-group">
			<div class="form-inline">
				<input type="text" name="length" class="form-control"> <label class="ml-2">cm</label> 
			</div>
			
			<div class="form-inline">
				<label>인치<input type="checkbox" name="transform" value="inch" class="form-control mr-2"></label>
				<label>야드<input type="checkbox" name="transform" value="yard" class="form-control mr-2"></label>
				<label>피트<input type="checkbox" name="transform" value="feet" class="form-control mr-2"></label>
				<label>미터<input type="checkbox" name="transform" value="meter" class="form-control mr-2"></label>
			</div>
			
			<button type="submit" class="btn btn-success">변환</button>
		</form>
	</div>
</body>
</html>