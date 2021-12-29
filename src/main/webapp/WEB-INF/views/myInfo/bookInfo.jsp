<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
</head>
<body>
	<c:import url="../default/header.jsp" />
	<h1>나의 예매 내역</h1>
	<table id="ticket">
		<tr>
			<th>영화 제목</th>
			<th>영 화 관</th>
			<th>좌석정보</th>
			<th>상 영 일</th>
			<th>상영시간</th>
		</tr>
		<c:forEach var="book" items="${bookList }">
			<c:if test="${empty loginUser}">
				<tr>
					<td colspan="6">예약내역이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${loginUser eq book.pn}">
				<tr>
					<td>${book.title }</td>
					<!-- 영화 제목 -->
					<td>${book.theater }</td>
					<!-- 상영관 -->
					<td>${book.seats }</td>
					<!-- 좌석정보 -->
					<td>${book.days }</td>
					<!-- 상영일 -->
					<td>${book.times }</td>
					<!-- 상영시간 -->
					<td><i class="fas fa-barcode"></i></td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<c:import url="../default/footer.jsp" />
</body>
</html>