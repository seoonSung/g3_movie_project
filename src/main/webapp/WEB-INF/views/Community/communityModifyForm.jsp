<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import url="../default/header.jsp" />
	<div id="wrap" style="width: 400px; margin: 0 auto;">
		<h1 style="text-align: center">수정하기</h1>
		<form method="post" action="${contextPath}/main/modify">
			<b>작성자</b><br>
			<input type="text" size="50" name="id" value="${personalDate.id }"/>
			<hr>
			<b>제목</b> <br> <input type="text" size="50" name="title" value="${personalDate.title }"/>
			<hr>
			<b>내용</b> <br>
			<textarea name="content" rows="10" cols="50">${personalDate.content }</textarea>
			<hr>
			<input type="submit" value="수정하기" /> 
			<input type=button value="목록보기"
				onClick="location.href='${contextPath}/main/communityMain'">
		</form>
	</div>
	<c:import url="../default/footer.jsp" />

</body>
</html>