<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="m-3">
		<h2>체격 조건 입력</h2>
		
		<form method="get" action="/jsp/test/test02.jsp" class="form-inline">
			<input type="text" name="height" class="form-control mr-1"> <label class="mr-2"> cm</label>
			<input type="text" name="weight" class="form-control mr-1"> <label class="mr-2"> kg</label>
			<button type="submit" class="btn btn-info ml-2">계산</button>
		</form>
	</div>
</body>
</html>