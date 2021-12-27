<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:import url="../default/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
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
 -->
 <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
<script src="${contextPath}/resources/js/login.js"></script>
</head>
<body style="background-color:black;">
<!-- <div align="center"><h1>LOGIN</h1></div> -->
<div align="right" class="wrap">
   <!-- <form action = "<%=request.getContextPath() %>/member/user_check" method="post">
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
     --> 
     <div class="inner" style="margin-top: 70px;">
			<div class="image-holder">
				<img id="poster"
					src="https://mblogthumb-phinf.pstatic.net/MjAxOTAyMDFfMjM2/MDAxNTQ4OTk0NjMzMDMx.rN0wgGq7uQ0tsFiavR-idn03KeXfUqYGdYnNCRmU0zIg.hjBoWtXalXdQpvGbF5iRQru3ugref9gtaHCR0yuXwsAg.JPEG.alsdl9063/AVS.jpg?type=w800"
					alt="">
			</div>
			<form action="${contextPath}/member/user_check" id="loginForm" method="post">
				<p class="register-title">
					<img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png">
					<span>로그인</span>
				</p>
				<div class="form-wrapper form-wrapper-id">
					<div class="id-wrapper">
						<input id="id" name="id" type="text" placeholder="아이디"
							class="form-control"> <i class="zmdi zmdi-accounts"></i>
					</div>
				</div>

				<div class="form-wrapper">
					<input type="password" name="pw" placeholder="비밀번호"
						id="password" class="form-control"> <i
						class="zmdi zmdi-lock"></i>
				</div>

				<div class="sort1">
					<input type="checkbox" id="checkSaveId" name="autoLogin"> <span>로그인 유지</span>
				</div>


				<input 
				style="color: black; font-family: 'Poppins-Regular';border: none;width: 164px;
				height: 51px;margin: auto;margin-top: 40px; cursor: pointer;display: flex;align-items: center;justify-content: center;
				padding: 0; background: black;font-size: 15px;color: #fff;vertical-align: middle;-webkit-transform: perspective(1px) translateZ(0);
				transform: perspective(1px) translateZ(0);-webkit-transition-duration: 0.3s;transition-duration: 0.3s;text-align: center;font-size: 13px;"
				type="submit" value="로그인" class="loginButton">
					
				
				<button type="button" onclick="location.href='${contextPath}/member/register_form'" class="moveRegister" style="margin-top: 10px;">
					<span>회원가입</span> <i class="zmdi zmdi-arrow-right"></i>
				</button>
				
				<button type="button" class="moveMain" style="margin-top: 10px;">
					<span>메인 홈페이지</span> <i class="zmdi zmdi-arrow-right"></i>
				</button>
			</form>

		</div>
</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>