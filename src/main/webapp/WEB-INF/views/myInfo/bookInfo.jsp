<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<h1>나의 예매 내역</h1>
	<c:forEach var="book" items="${bookList }">
		<div class="ticket">
			<div class="grade">${book.grade }</div>
			<hr>
			<div class="title"><h3>${book.title }</h3></div>
			<hr>
			<div class="theater">${book.theater }</div><br>
			<div class="seats"><b><h3>${book.seats }</h3></b></div><br>
			<div class="days">${book.days }</div><br>
			<div class="times">${book.times }</div><br>
			<div class="cost"></div><br>
			<i class="fas fa-barcode"></i>
		</div>
	</c:forEach>
	<c:import url="../default/footer.jsp" />
</body>
</html>