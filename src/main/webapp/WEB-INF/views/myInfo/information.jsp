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
</head>
<body>
	<c:import url="../default/header.jsp" />
	<br>
	<a href="${contextPath }/myInfo/aboutInfo">
		<div class="aboutInfo">
			<h1 align="center">
				<i class="far fa-question-circle fa-3x"></i><br> <br>내 정 보
			</h1>
		</div>
	</a>
	<a href="memberInfo">
		<div class="modifyInfo">
			<h1 align="center">
				<i class="fas fa-question fa-3x"></i><br> <br>정보변경
			</h1>
		</div>
	</a>
	<a href="deleteMember">
		<div class="deleteMember">
			<h1 align="center">
				<i class="fas fa-question fa-3x"></i><br> <br>회원탈퇴
			</h1>
		</div>
	</a>
	<a href="myInfoMain">
		<div class="modifyInfo">
			<h1 align="center">
				<i class="fas fa-question fa-3x"></i><br> <br>뒤	로
			</h1>
		</div>
	</a>
	<c:import url="../default/footer.jsp" />
</body>
</html>