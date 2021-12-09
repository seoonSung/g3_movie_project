<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.content {
 margin:50px auto;
 width:250px;
 padding:30px 25px 30px 25px;
 border:1px solid black;
 border-radius:5px;   
 }
  .content:hover{
background-color: rgb(216, 216, 216);
}
 
 a {
 text-decoration: none;
 color: black;
 }
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">
	
	<div class="content">
		<h2><a href="${contextPath }/qnaboard/boardList">Q & A 게시판</a></h2>
	</div>
	<div class="content">
		<h2><a href="${contextPath }/qnaboard/boardList">1 : 1 문의</a></h2>
	</div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>