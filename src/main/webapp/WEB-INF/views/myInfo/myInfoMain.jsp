<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/1bd9eb3151.js"
	crossorigin="anonymous"></script>
<style type="text/css">
a {
	text-decoration-line: none;
}

.memberInfo, .bookInfo, .movieRecommend, .myOneOnOne {
	width: 200px;
	height: 180px;
	margin: 30px 700px;
	padding: 20px 0;
	border: 1px solid;
	border-radius: 15%;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<br>
	<a href="${contextPath }/myInfo/information">
		<div class="memberInfo">
			<h1 align="center">
				<i class="far fa-question-circle fa-3x"></i><br> <br>회 원 정 보
			</h1>
		</div>
	</a>
	<a href="${contextPath }/myInfo/bookInfo">
		<div class="bookInfo">
			<h1 align="center">
				<i class="fas fa-question fa-3x"></i><br> <br>나 의 예 매
			</h1>
		</div>
	</a>
	<a href="${contextPath }/myInfo/myQna">
		<div class="myOneOnOne">
			<h1 align="center">
				<i class="fas fa-question fa-3x"></i><br> <br>나 의 문 의
			</h1>
		</div>
	</a>
	<c:import url="../default/footer.jsp" />
</body>
</html>