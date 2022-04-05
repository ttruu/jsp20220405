<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar 클래스 사용</title>
</head>
<body>
<%
java.util.Calendar cal = java.util.Calendar.getInstance();
%>
오늘은
<%= cal.get(java.util.Calendar.YEAR) %>
<%= cal.get(java.util.Calendar.MONTH) + 1 %>
<%= cal.get(java.util.Calendar.DATE) %>

</body>
</html>