<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String desc = request.getParameter("desc");

desc = new StringBuffer(desc).reverse().toString(); 

%>

<h1 style="white-space:pre"><%= desc %></h1>
</body>
</html>