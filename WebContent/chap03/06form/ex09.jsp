<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>input 요소 type="radio"</h1>

	<form action="ex10.jsp">

		<!-- (input:r+br)*3+input:submit -->
		<input type="radio" name="destination" id="" value="home" /> 집
		<br />
		<input type="radio" name="destination" id="" value="office"/> 직장
		<br />
		<input type="radio" name="destination" id="" value="school"/> 학교
		<br />
		
		성별 <br />
		<!-- (input:r+br)*2 -->
		<input type="radio" name="gender" value="m" id="" /> 남
		<br />
		<input type="radio" name="gender" value="w id="" /> 여
		<br />
		<input type="submit" value="전송" /> 

	</form>
</body>
</html>