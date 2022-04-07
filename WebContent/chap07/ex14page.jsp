<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>

<%
String startStr = request.getParameter("start");
String endStr = request.getParameter("end");

int start = Integer.parseInt(startStr);
int end = Integer.parseInt(endStr);


for(int i = start; i<= end; i++) {
	out.print("|");
%>
<a href="#"><%= i %></a>
<% 	
}
out.print("|");
%>



</div>