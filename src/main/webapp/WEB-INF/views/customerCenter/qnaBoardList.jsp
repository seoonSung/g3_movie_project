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
 #main{
margin-left: 330px;
padding: 50px;
}
  #table{
 margin: auto;
width: 100%;
border-top-style:  solid;  
border-collapse:collapse;       
}
  a {
text-decoration: none;
color: black;
 }
 td, th{padding: 10px;
 border-bottom:1px solid #444444;
 }
 td{
text-align:center;

 }
 th{
 background-color: white;
 padding:15px;
 }
  thead tr {
    background-color: #0d47a1;
    color: #ffffff;
  }
  tbody tr:nth-child(2n) {
    
   background-color: rgb(233, 233, 233);
  }
  tbody tr:nth-child(2n+1) {
   background-color:white;
  }
  #num{
  padding: 10px 100px;
  margin-left: 360px;
  }
  .tt{
  width: 270px;
  }
 
</style>
</head>
<body style="background-color:white;">
<c:import url="../default/header.jsp"/>
<div class="wrap">
<div id="main">
	<h1 style="font-size:50px;">Q & A 게시판</h1>
</div>
<h3>Total :${boardAllList.size()}건(1/1page)</h3>
	<div>
		<table id="table">
			<tr>
				<th>문의 내용</th>
				<th class="tt">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>답변상태</th>
				<th>조회수</th>
			</tr>
		<c:if test="${boardList.size() == 0 }">
			<tr>
				<td colspan="6">데이터 없음</td>
			</tr>
		</c:if>
		<c:forEach var="list" items="${boardList}">
			<tr>

				<td>${list.sort}</td>				<!-- 문의내용에 해당하는 값을 넣기 -->
				<td><a href="${contextPath}/qnaboard/contentView?num=${list.num}">${list.title}</a></td>   <!-- contentView로 넘어갈때 session id값으로 불러오기 -->
				<td>${list.id}</td>			<!-- session에 저장되어있는 아이디값 넣기 -->
				<td>${list.days}</td>
				<td>${list.answer}</td>				<!-- 답변 상태는 request값에 넣기 -->
				<td>${list.hit}</td>
			</tr>
			
		</c:forEach>
		
			
			
		
		</table>
				<div align="left" style="padding:10px;">
				<span id="num">
					<c:forEach var="num" begin="1" end="${repeat}">
						<button type="button" onclick="location.href='boardList?num=${num}'">${num}</button>
					</c:forEach>
				</span>
				</div>
			<hr>
			<button type="button" onclick="location.href='${contextPath}/qnaboard/boardWrite'">글작성</button>
	</div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>