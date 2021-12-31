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
h1 {
	font-size: 20px;
}

table{
	border-spacing: 70px;
	margin: auto;
	padding: auto;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<br>
	<table>
		<tr>
			<td><a href="${contextPath }/myInfo/aboutInfo">
					<div class="aboutInfo">
						<h1 align="center">
							<i class="fas fa-user-check fa-5x"></i><br> <br>내 정 보
						</h1>
					</div>
			</a></td>
			<td><a href="memberInfo">
					<div class="modifyInfo">
						<h1 align="center">
							<i class="fas fa-user-cog fa-5x"></i><br> <br>정보변경
						</h1>
					</div>
			</a></td>
		</tr>
		<tr>
			<td><a href="deleteMember">
					<div class="deleteMember">
						<h1 align="center">
							<i class="fas fa-user-times fa-5x"></i><br> <br>회원탈퇴
						</h1>
					</div>
			</a></td>
			<td><a href="myInfoMain">
					<div class="modifyInfo">
						<h1 align="center">
							<i class="fas fa-backspace fa-5x"></i><br> <br>뒤 로
						</h1>
					</div>
			</a></td>
		</tr>
	</table>




	<c:import url="../default/footer.jsp" />
</body>
</html>