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
 margin-top:80px;
 width:180px;
 padding:30px 25px 30px 25px;
 border:1px solid rgb(17, 17, 17);
 border-radius:5px;   
 }

  .content:hover{
background-color: rgb(216, 216, 216);
transition: all 1s;
}
a:hover{
color : rgb(0, 0, 0);
}
 
 a {
 text-decoration: none;
color: rgb(17, 17, 17);
 }
 table{
 margin:auto;
 border-spacing:30px;
 }

</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div style="margin-top:100px;"class="wrap">

<table>
	<tr>
	 <td>
	 <div class="content">
			<h2><a href="${contextPath }/qnaboard/boardList">Q & A 게시판</a></h2>
		</div>
	 </td>
	 <td>
	 <div class="content">
			<h2><a href="${contextPath }/service/oneOnOneQnaForm">1 : 1 문의</a></h2>
		</div>
	 </td>
	</tr>

</table>

</div>

<c:import url="../default/footer.jsp"/>
</body>
</html>