<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<h1>ex03from.jsp</h1>

<%
	String param = request.getParameter("param");

	if(param != null && param.equals("vip")) {

%>
	<jsp:forward page="ex03to1.jsp"></jsp:forward>
<%
	} else {
		
%>
	<jsp:forward page="ex03to2.jsp"></jsp:forward>
<%
	}
%>
</body>
</html>