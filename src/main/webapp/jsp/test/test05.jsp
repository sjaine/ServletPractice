<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	<%
		String lengthString = request.getParameter("length");
	
		int length = Integer.parseInt(lengthString);
		
		String[] transformValues = request.getParameterValues("transform");
		// [인치], [피트], [야드] 
				
		String transformList = "";
	
		for(int i = 0; i < transformValues.length; i++) {
			if(transformValues[i].equals("inch")) {
				transformList += (length * 0.3937) + " in <br>";
			} else if(transformValues[i].equals("yard")) {
				transformList += (length * 0.010936) + " yd <br>";
			} else if(transformValues[i].equals("feet")) {
				transformList += (length * 0.032808) + " ft <br>";
			} else if(transformValues[i].equals("meter")) {
				transformList += (length * 0.01) + " m <br>";
			}
		}
 		
	%> 
	
	<div class="m-3">
		<h2>변환 결과</h2>
		<h4><%= length %>cm</h4>
		<hr>
		<h4><%= transformList %></h4>
	</div>
</body>
</html>