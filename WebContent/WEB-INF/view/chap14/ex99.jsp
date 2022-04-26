<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>

	<form action="">
		직원번호 : <input type="number" name="id" id="" /> 
		<input type="submit" value="조회" />
	</form>

	<form action="" method="post">
		LastName : <input type="text" name="lastName" id="" value="${employee.lastName }"/> <br />
		FirstName : <input type="text" name="firstName" id="" value="${employee.firstName }"/> <br />
		BirthDate : <input type="text" name="birthDate" id="" value="${employee.birthDate }"/> <br />
		Photo : <input type="text" name="photo" id="" value="${employee.photo }"/> <br />
		Notes : <input type="text" name="notes" id="" value="${employee.notes }"/> <br />
		<input type="submit" value="수정" />
	</form>
</body>
</html>