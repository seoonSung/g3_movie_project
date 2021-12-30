<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>movie</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
body {
    color: black;
    font-size: 13px;
    margin: 0;
}
img {
    max-width: 100%;
}
input {
    background-color: transparent;
}
.clickedButton {
    opacity: 0.5;
}
.foram-wrapper>input {
    background-color: transparent;
}
:focus {
    outline: none;
}
.wrapper {
    min-height: 100vh;
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    align-items: center;
}
.inner {
    padding: 15px 10px 15px 15px;
    background-color: #FDFCF0;
    max-width: 850px;
    margin: auto;
    display: flex;
    width: 700px;
    justify-content: center;
}
.inner .image-holder {
    width: 60%;
}
.inner form {
    width: 60%;
    padding-top: 36px;
    padding-left: 45px;
    padding-right: 45px;
}

.form-wrapper {
    position: relative;
}
.form-control {
    border: 1px solid black;
    border-top: none;
    border-right: none;
    border-left: none;
    display: block;
    width: 100%;
    height: 30px;
    padding: 0;
    margin-bottom: 25px;
}

button {
    border: none;
    width: 164px;
    height: 51px;
    margin: auto;
    margin-top: 40px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    background: black;
    font-size: 15px;
    color: #fff;
    vertical-align: middle;
    -webkit-transform: perspective(1px) translateZ(0);
    transform: perspective(1px) translateZ(0);
    -webkit-transition-duration: 0.3s;
    transition-duration: 0.3s;
}

.register-title {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 25px;
    padding-bottom: 20px;
    margin-top: 5px;
    margin-bottom: 5px;
}
.register-title>img {
    width: 80px;
    height: auto;
    opacity: 0.8;
    padding-bottom: 10px;
}

#login{
    border: none;
    width: 164px;
    height: 51px;
    margin: auto;
    margin-top: 40px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    background: black;
    font-size: 15px;
    color: #fff;
    vertical-align: middle;
    -webkit-transform: perspective(1px) translateZ(0);
    transform: perspective(1px) translateZ(0);
    -webkit-transition-duration: 0.3s;
    transition-duration: 0.3s;
}
</style>
</head>

<body style="background-color: black;">

	<div class="wrapper">

		<div class="inner">
			<div class="image-holder">
				<img id="poster"
					src="https://mblogthumb-phinf.pstatic.net/MjAxOTAyMDFfMjM2/MDAxNTQ4OTk0NjMzMDMx.rN0wgGq7uQ0tsFiavR-idn03KeXfUqYGdYnNCRmU0zIg.hjBoWtXalXdQpvGbF5iRQru3ugref9gtaHCR0yuXwsAg.JPEG.alsdl9063/AVS.jpg?type=w800"
					alt="">
			</div>
			<form action="${contextPath}/member/user_check" method="post">
				<p class="register-title">
					<img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png">
					<span>로그인</span>
				</p>
				<div class="form-wrapper form-wrapper-id">
					<div class="id-wrapper">
						<input id="id" name="id" type="text" placeholder="아이디"
							class="form-control">
					</div>
				</div>

				<div class="form-wrapper">
					<input type="password" name="pw" placeholder="비밀번호"
						id="password" class="form-control"> 
				</div>

				<div class="sort1">
					<input type="checkbox" id="checkSaveId" name="autoLogin"> <span>로그인 유지</span>
				</div>


				<input id="login" type="submit" class="loginButton" value="로그인">
				<button type="button" onclick="location.href='${contextPath}/member/register_form'" class="moveRegister" style="margin-top: 10px;">
					<span>회원가입</span> 
				</button>
				
				<button type="button" onclick="location.href='${contextPath}/main'" class="moveMain" style="margin-top: 10px;">
					<span>메인 홈페이지</span>
				</button>
			</form>

		</div>
	</div>
	<c:import url="../default/footer.jsp"/>

</body>
</html>















