<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<%!
private int multiple(int a, int b) {
	return a * b;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 2 ~ 9단 완성</h1>

<%
for(int i = 2; i < 10; i++) {
	for(int j = 1; j < 10; j++) {
		
%>

<%= i + "x" + j + "=" + multiple(i, j) %>
<br />
<%
	}
}
%>
</body>
</html>