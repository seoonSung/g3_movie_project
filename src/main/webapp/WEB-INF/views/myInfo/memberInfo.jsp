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
<style type="text/css">
#main {
	margin-left: 330px;
	padding: 50px;
}

#table {
	margin: auto;
	width: 100%;
	border-top-style: solid;
	border-collapse: collapse;
}

a {
	text-decoration: none;
	color: black;
}

td, th {
	padding: 10px;
	border-bottom: 1px solid #444444;
}

td {
	text-align: center;
}

th {
	background-color: white;
	padding: 15px;
}

thead tr {
	background-color: #0d47a1;
	color: #ffffff;
}

tbody tr:nth-child(2n) {
	background-color: rgb(233, 233, 233);
}

tbody tr:nth-child(2n+1) {
	background-color: white;
}

#num {
	padding: 10px 100px;
	margin-left: 360px;
}

.tt {
	width: 270px;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class = modifyForm align="center">
	<h1 align="center">회원 정보 변경</h1>
	<form action="${contextPath }/myInfo/modify" name="modify" method="post" onsubmit="return CheckPassword()">
		<table border="1">
			<tr><th>아이디</th>
			<td><input type="text" name="id" value="${loginUser }" readonly /></td></tr>
			<tr><th>새 비밀번호</th>
			<td><input type="password" name="pw" autofocus required/></td></tr>
			<tr><th>새 비밀번호 확인</th>
			<td><input type="password" name="pwCheck" required/></td></tr>
			<tr><th>이	름</th>
			<td><input type="text" name="name" value="${List.name }" readonly /></td></tr>
			<tr><th>연락처</th>
			<td><input type="text" name="phonenumber" onfocus="this.value=''; return true" value="${List.phonenumber }" required /></td></tr>
			<tr><th>이메일</th>
			<td><input type="text" name="email" onfocus="this.value=''; return true" value="${List.email }" required /></td></tr>
		</table>
		<br>
			<input type="submit" value="변경완료" onclick="${contextPath}/myInfo/myInfoMain"/>
			<input type="button" value="취	소" onclick="history.back()"/>
	</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>