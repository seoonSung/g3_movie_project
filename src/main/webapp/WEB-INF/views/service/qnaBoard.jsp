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
table {
	margin-top: 5%;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="wrap" align="center">
		<table border="1">
			<tr>
				<th style="width: 30px">번호</th>
				<th style="width: 60px">문의내용</th>
				<th style="width: 500px">제목</th>
				<th style="width: 80px">작성자</th>
				<th style="width: 130px">날짜</th>
				<th style="width: 50px">조회수</th>
			</tr>
			<c:if test="${qnaList.size() == 0 }">
				<tr>
					<td colspan="6">작성된 Q&A가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${qnaList }">
				<tr>
					<td>${dto.writeNo}</td>
					<td>${dto.sort }</td>
					<td><a
						href="${contextPath}/service/qnaContentView?num=${dto.writeNo}">${dto.title }</a>
					</td>
					<td>${dto.id }</td>
					<td>${dto.saveDate }</td>
					<td>${dto.hit }</td>
				</tr>
			</c:forEach>
		</table>
		<div align="left">
			<c:forEach var="num" begin="1" end="${repeat }">
				<a href="qnaBoard?num=${num }">[${num }]</a>
			</c:forEach>
		</div>
		<br> <input class="btn" type="submit" value="글작성"
			onclick="location.href='${contextPath }/service/writeForm'">
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>