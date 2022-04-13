<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<h1>예제문제</h1>
<%
Map<String, String> map = new HashMap<>();
map.put("boy group", "bts");
map.put("girl group", "aespa");
map.put("car", "현대");
map.put("season", "spring");

pageContext.setAttribute("map1", map);
pageContext.setAttribute("map2", map);

%>


<p>${map1["boy group"] }</p>
<p>${map1["girl group"] }</p>

<p>${map2.car}</p>
<p>${map2.season}</p>
</body>
</html>