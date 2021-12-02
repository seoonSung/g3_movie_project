<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<title>답글쓰기</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="wrap" style="width: 400px; margin: 0 auto;">
		<h1 style="text-align: center">답글쓰기</h1>
		<form method="post" action="${contextPath}/main/replySave">
			<b>작성자</b><br>
			<input type="text" size="50" name="id" />
			<input type="hidden" name="groups" value="${personalDate.groups}">
			<input type="hidden" name="step" value="${personalDate.step+1}">
			<input type="hidden" name="indent" value="${personalDate.indent+1}">
			<!-- 커뮤니티_보드 테이블의 groups값을 커뮤니티_보드_리플라이 테이블의 groups로 넘겨주기 위함 -->
			<hr>
			<b>제목</b> <br> <input type="text" size="50" name="title" readonly="readonly"
			 value="RE:${personalDate.title }"/>
			<hr>
			<b>내용</b> <br>
			<textarea name="content" rows="10" cols="50"></textarea>
			<hr>
			<input type="submit" value="글쓰기" /> 
			<input type=button value="목록보기"
				onClick="location.href='${contextPath}/main/communityMain'">
		</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>