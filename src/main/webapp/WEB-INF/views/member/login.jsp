<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../default/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{margin-top:100px;
margin-bottom: 15px;
font-size:600;}
table{margin: auto;}
input{
padding: 5px 20px 5px 20px;
margin-top:5px;
}
#input1{
padding: 5px 82px;
background-color: black;
color:white;
}
</style>
</head>
<body>
<div align="center"><h1>LOGIN</h1></div>
<div align="right" class="wrap">
    <form action = "<%=request.getContextPath() %>/member/user_check" method="post">
        <table>
			<tr>
			<td><input type="text" name="id" placeholder="아이디" value="${saveId }"></td>
			</tr>
			<tr><td><input type="text" name="pw" placeholder="비밀번호"></td></tr>
			<tr>
				<td><hr></td>
			</tr>
			<tr>
				<td><input id="input1" type="submit" value="로그인"></td>
			</tr>
			<tr>
				<td colspan="2" align="left">
					
					<input type="checkbox" name="autoLogin">로그인 유지<br>
					<input type="checkbox" name="saveId">아이디 기억하기<br>
					<a href="register_form">회원가입</a>
				</td>
			</tr>
        </table>
    </form>
</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>