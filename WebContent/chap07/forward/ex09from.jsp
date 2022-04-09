<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

Car o1 = new Car();
o1.setName("kia");
o1.setPrice(1500);

Car o2 = new Car();
o2.setName("SAMSUNG");
o2.setPrice(2000);


request.setAttribute("myCar", o1);
request.setAttribute("yourCar", o2);
%>

<jsp:forward page="ex09to.jsp"></jsp:forward>