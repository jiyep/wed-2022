<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import = "java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</head>
<body>

	<table class="table">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>
		</tr>
		<tr>
		<c:forEach var="dto" items="${requestScope.dtos}">
			<tr>
				<td><a href='updateForm.jsp?id=${dto.id}'>${dto.id}</a></td>
				<td>${dto.name}</td>
				<td>${dto.pwd}</td>
			</tr>
		</c:forEach>
	</table>
	

</body>
</html>