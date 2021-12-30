<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">	
	<style type="text/css">
		table {
			text-align: center;
			margin-left:auto; 
    		margin-right:auto;
		}
		
		#main {
	margin-left: 330px;
	padding: 50px;
}


a {
	text-decoration: none;
	color: black;
}

td, th {
	padding: 10px;
	border-bottom: 1px solid #444444;
}

td {
	text-align: center;
}

th {
	background-color: white;
	padding: 15px;
}

thead tr {
	background-color: #0d47a1;
	color: #ffffff;
}

tbody tr:nth-child(2n) {
	background-color: rgb(233, 233, 233);
}

tbody tr:nth-child(2n+1) {
	background-color: white;
}

#num {
	padding: 10px 100px;
	margin-left: 360px;
}

.tt {
	width: 270px;
}

#button{
	text-align: center;
	margin-left:auto; 
    margin-right:auto;
}

	</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<h1 align="center">나의 예매 내역</h1>
	<table id="ticket" border="1">
		<tr>
			<th>영화 제목</th>
			<th>영 화 관</th>
			<th>좌석정보</th>
			<th>상 영 일</th>
			<th>상영시간</th>
		</tr>
		<c:if test="${empty bookList}">
			<tr>
				<td colspan="6">예약내역이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="book" items="${bookList }">
			<c:if test="${bookList.size() >= 1}">
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
					<td><input type="button"  value="취	소" onclick="location.href='${contextPath}/myInfo/cancel?title=${book.title}&seats=${book.seats}&theater=${book.theater}&times=${book.times}&days=${book.days}'">
				</tr>
			</c:if>
		</c:forEach>
	</table><br>
	<div id="button">
		<input type="button" value="확	인" onclick="history.back()" />
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>