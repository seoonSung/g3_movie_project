<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
}

.wrap {
	width: 1000px;
	margin: auto;
}

.header {
	width: 1000px;
	background-color: white;
}

.navdiv {
	width: 100%;
	background-color: rgb(0, 0, 0);
}

nav {
	background-color: rgb(0, 0, 0);
	width: 1000px;
	height: 50px;
}

nav ul {
	list-style: none;
	display: flex;
	justify-content: flex-end;
}

nav ul li {
	margin: 0 3px;
	padding: 15px 15px;
}

nav ul li a {
	text-decoration: none;
	color: white;
	font-weight: 500;
}

nav ul li a:hover {
	color: rgb(255, 255, 255);
	padding-bottom: 8px; /* a태그 밑줄과 글씨 간격*/
	border-bottom: 1px solid rgb(255, 255, 255);
	transition: all 0.25s;
}

#nav1 ul {
	width: 350px;
	float: left;
	margin-top: 50px;
}

#nav2 ul {
	width: 400px;
	float: right;
}

#icon {
	width: 40px;
	height: 40px;
	background-color: rgb(255, 255, 255);
}
</style>
</head>
<body>
	<div class="wrap"></div>
	<div class="navdiv">
		<div class="wrap">
			<nav id="nav1">
				<ul>
					<li><a href="${contextPath }/info">영화</a></li>
					<li><a href="${contextPath}/bookMain">예매</a></li>
					<li><a href="${contextPath }/theaterMain">극장</a></li>
					<li><a href="${contextPath}/qnaboard/main">고객센터</a></li>
				</ul>
			</nav>
			<nav id="nav2">
				<ul>
					<li><a href="#">스토어</a></li>
					<li><c:choose>
							<c:when test="${loginUser != null }">
								<a href="${contextPath }/member/logout">로그아웃</a>
							</c:when>
							<c:otherwise>
								<a href="${contextPath }/member/login">로그인</a>
							</c:otherwise>
						</c:choose></li>
					<li><a href="${contextPath }/main/communityMain">커뮤니티</a></li>
					<li><a href="#" style="background-color: lemonchiffon;"><img
							src="1.png" width="20" height="20"></a></li>
					<li><a href="#" style="background-color: lemonchiffon;"><img
							src="2.png" width="20" height="20"></a></li>
				</ul>
			</nav>
		</div>
	</div>

</body>
</html>