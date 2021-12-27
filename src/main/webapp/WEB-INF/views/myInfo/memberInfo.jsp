<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function CheckPassword(){
		var password = document.modify.pw
		var passwordCheck = document.modify.pwCheck
		if(password.value !== passwordCheck.value){
			alert("새 비밀번호를 확인해주세요.")
			return false
		}
	}
</script>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class = modifyForm align="center">
	<h1 align="right">회원 정보 변경</h1>
	<form action="${contextPath }/myInfo/modify" name="modify" method="post" onsubmit="return CheckPassword()">
		<table border="1">
			<tr><th>아이디</th>
			<td><input type="text" name="id" value="${loginUser }" readonly /></td></tr>
			<tr><th>새 비밀번호</th>
			<td><input type="password" name="pw" onfocus="this.value=''; return true" value="새 비밀번호 입력" /></td></tr>
			<tr><th>새 비밀번호 확인</th>
			<td><input type="password" name="pwCheck" onfocus="this.value=''; return true" value="새 비밀번호 확인" /></td></tr>
			<tr><th>이	름</th>
			<td><input type="text" name="name" value="${List.name }" readonly /></td></tr>
			<tr><th>연락처</th>
			<td><input type="text" name="phoneNumber" onfocus="this.value=''; return true" value="${List.phoneNumber }" /></td></tr>
			<tr><th>이메일</th>
			<td><input type="text" name="email" value="${List.email }" /></td></tr>
		</table>
		<br>
			<input type="submit" value="변경완료" onclick="${contextPath}/myInfo/myInfoMain"/>
			<input type="button" value="취	소" onclick="history.back()"/>
	</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>