<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
 <%-- age 요청 파라미터 값이 20보다 크거나 같을 때
 "관람가능" 출력
 아니면 "관람 불가능" 출력하는 ex04.jsp 작성(jstl, el 사용) --%>
 <p>${param.age }</p>
 <c:if test="${ param.age >= 20 }" var="canWatch">
 <h1>관람 가능</h1>
 </c:if>
 
 <c:if test="${ param.age < 20 }">
 <h1>관람 불가능</h1>
 </c:if>
 
 <hr />
 
<c:if test="${ !canWatch }">
 <h1>관람 불가능</h1>
 </c:if>
 
 
</body>
</html>