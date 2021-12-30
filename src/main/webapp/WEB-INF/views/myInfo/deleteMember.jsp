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
		text-align:center;
		margin-left:auto; 
	    margin-right:auto;
	}
	h1, h2{
		text-align:center;
	}
	.button{
		text-align:center;
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
	<div class="align">
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
		<br> 
		<div class="button">
		<input type="submit" value="회원탈퇴" onclick="${contextPath}/main" /> 
		<input type="button" value="취	소" onclick="history.back()" />
		</div>
	</form>
	</div>
	<c:import url="../default/footer.jsp" />

</body>
</html>