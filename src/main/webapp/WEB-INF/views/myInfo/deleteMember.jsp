<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp" />

	<h1>회원탈퇴</h1>
	<form action="${contextPath }/myInfo/delete" name="deleteMember"
		method="get">
		<table border="1">
			<h2>정말로 탈퇴를 원하신다면 비밀번호를 입력해주세요.</h2>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" value="${loginUser }" readonly /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pw" /></td>
			</tr>
		</table>
		<br> <input type="submit" value="회원탈퇴"
			onclick="${contextPath}/main" /> <input type="button" value="취	소"
			onclick="history.back()" />
	</form>
	<c:import url="../default/footer.jsp" />

</body>
</html>