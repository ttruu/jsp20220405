<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>1~10을 출력</h1>
<%
	// p요소 10개 출력
	for(int i= 1; i <= 10; i++ ) {
		out.println("<p>"+i+"</p>");
	}
%>
</body>
</html>