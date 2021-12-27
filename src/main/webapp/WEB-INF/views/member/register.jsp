<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
<script type="text/javascript">
let crawlingData = [];
const idCheckButton = document.querySelector('.idCheckButton');
const registerButton = document.querySelector('.registerButton');
const id = document.querySelector('#id');
const registerForm = document.querySelector('#registerForm');
const password = document.querySelector('#password');
const passwordRepeat = document.querySelector('#passwordRepeat');
const poster = document.querySelector('#poster');
let idFlag = false;


document.addEventListener('DOMContentLoaded', () => {
    idCheckButton.addEventListener('click', function() {
        console.log(document.querySelector('#id').value);
        idCheck();
    });
    add();

    registerButton.addEventListener('click', () => {
        registerForm.submit();
    });
});


function idCheck() {
	let id = document.querySelector('#id').value
	
    $.ajax({
        url: "idCheck/"+id,
        type: "GET",
        dataType:"json",
        success: function(data) {
           
            idCheckMessage(data);
        },
    });
}


function idCheckMessage(data) {
	console.log(data)
	console.log(data)
    

    if (data == false) {
    	alert('사용 가능한 아이디 입니다.')
        return idFlag = true;
        //registerButton.removeAttribute('disabled');
    } else {
    	alert('이미 존재하는 아이디 입니다.')
        return idFlag = false;
        //registerButton.setAttribute('disabled', 'true');
    }
}

</script>
<style>
@font-face {
    font-family: 'Poppins-Regular';
    src: url('../fonts/poppins/Poppins-Regular.ttf');
}

@font-face {
    font-family: 'Poppins-SemiBold';
    src: url('../fonts/poppins/Poppins-SemiBold.ttf');
}

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins-Regular';
    color: black;
    font-size: 13px;
    margin: 0;
}

input,
textarea,
select,
button {
    font-family: 'Poppins-Regular';
    color: black;
    font-size: 13px;
}

p,
h1,
h2,
h3,
h4,
h5,
h6,
ul {
    margin: 0;
}

img {
    max-width: 100%;
}

ul {
    padding-left: 0;
    margin-bottom: 0;
}

a:hover {
    text-decoration: none;
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

.inner h3 {
    text-transform: uppercase;
    font-size: 25px;
    font-family: 'Poppins-SemiBold';
    text-align: center;
    margin-bottom: 28px;
}

.form-group {
    display: flex;
}

.form-group input {
    width: 60%;
}

.form-group input:first-child {
    margin-right: 25px;
}

.form-wrapper {
    position: relative;
}

.form-wrapper i {
    position: absolute;
    bottom: 9px;
    right: 0;
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

.form-control::-webkit-input-placeholder {
    font-size: 13px;
    color: black;
    font-family: 'Poppins-Regular';
}

.form-control::-moz-placeholder {
    font-size: 13px;
    color: black;
    font-family: 'Poppins-Regular';
}

.form-control:-ms-input-placeholder {
    font-size: 13px;
    color: black;
    font-family: 'Poppins-Regular';
}

.form-control:-moz-placeholder {
    font-size: 13px;
    color: black;
    font-family: 'Poppins-Regular';
}

.wrapper {
    position: relative;
    z-index: 1;
}

.wrapper:after {
    background-image: url('../images/background.jpg');
    background-position: center;
    background-size: cover;
    top: 0;
    left: 0;
    position: absolute;
    background-size: 100%;
    opacity: 0.9 !important;
    z-index: -1;
    content: '';
    width: 100%;
    height: 100%;
}

.image-holder {
    display: flex;
    align-items: center;
}

.image-holder>img {
    width: 380px;
    height: auto;
}

.image-holder>img:hover {
    opacity: 0.5;
}

.register-title {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 25px;
    padding-bottom: 20px;
}

.register-title>img {
    width: 80px;
    height: auto;
    opacity: 0.8;
    padding-bottom: 10px;
}

.zmdi-id {
    background-color: grey;
    padding: 3px;
    color: white;
    font-size: 10px;
}

.zmdi-id {
    opacity: 1;
}

.zmdi-id:active {
    opacity: 0.5;
}

#id {
    position: relative;
}

.idCheckButton {
    position: absolute;
    top: -35px;
    right: -20px;
    font-size: 8px;
    width: 70px;
    height: 20px;
}

.idCheckButton:active {
    opacity: 0.5;
}

select {
    -moz-appearance: none;
    -webkit-appearance: none;
    cursor: pointer;
    padding-left: 20px;
}

select option[value=''][disabled] {
    display: none;
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

button i {
    margin-left: 10px;
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
}

button:hover i,
button:focus i,
button:active i {
    -webkit-animation-name: hvr-icon-wobble-horizontal;
    animation-name: hvr-icon-wobble-horizontal;
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
    -webkit-animation-iteration-count: 1;
    animation-iteration-count: 1;
}


@-webkit-keyframes hvr-icon-wobble-horizontal {
    16.65% {
        -webkit-transform: translateX(6px);
        transform: translateX(6px);
    }
    33.3% {
        -webkit-transform: translateX(-5px);
        transform: translateX(-5px);
    }
    49.95% {
        -webkit-transform: translateX(4px);
        transform: translateX(4px);
    }
    66.6% {
        -webkit-transform: translateX(-2px);
        transform: translateX(-2px);
    }
    83.25% {
        -webkit-transform: translateX(1px);
        transform: translateX(1px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}

@keyframes hvr-icon-wobble-horizontal {
    16.65% {
        -webkit-transform: translateX(6px);
        transform: translateX(6px);
    }
    33.3% {
        -webkit-transform: translateX(-5px);
        transform: translateX(-5px);
    }
    49.95% {
        -webkit-transform: translateX(4px);
        transform: translateX(4px);
    }
    66.6% {
        -webkit-transform: translateX(-2px);
        transform: translateX(-2px);
    }
    83.25% {
        -webkit-transform: translateX(1px);
        transform: translateX(1px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}

@media (max-width: 1199px) {
    .wrapper {
        background-position: right center;
    }
}

@media (max-width: 991px) {
    .inner form {
        padding-top: 10px;
        padding-left: 30px;
        padding-right: 30px;
    }
}

@media (max-width: 767px) {
    .inner {
        display: block;
    }
    .inner .image-holder {
        width: 100%;
    }
    .inner form {
        width: 100%;
        padding: 40px 0 30px;
    }
    button {
        margin-top: 60px;
    }
}


/*# sourceMappingURL=style.css.map */
</style>
</head>
<body style="background-color:black;">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../default/header.jsp"/>
<div class="wrap">

		<div class="inner" style="margin-top: 70px;">
			<div class="image-holder">
				<img id="poster"
					src="https://file.mk.co.kr/meet/neds/2021/12/image_readtop_2021_1132015_16393571404881744.jpg"
					alt="">
			</div>
			<form action="${contextPath}/member/register" id="registerForm" method="post">
				<p class="register-title">
					<img  src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png">
					<span>회원가입</span>
				</p>
				<div class="form-wrapper form-wrapper-id">
					<div class="id-wrapper">
						<input id="id" name="id" type="text" placeholder="아이디"
							class="form-control">
						<!-- <i class="zmdi zmdi-id">아이디 체크</i> -->
						<button type="button" class="idCheckButton" onclick="idCheck()">아이디 체크</button>
					</div>
				</div>

				<div class="form-wrapper">
					<input type="password" name="pw" placeholder="비밀번호" id="password"
						class="form-control"> <i class="zmdi zmdi-lock"></i>
				</div>
				<div class="form-wrapper">
					<input type="password" placeholder="비밀번호 확인" class="form-control" id="passwordRepeat" onChange="passwordValidate()" >
					<i class="zmdi zmdi-lock"></i>
				</div>

				<div class="form-wrapper">
					<input name="name" type="text" placeholder="이름"
						class="form-control"> <i class="zmdi zmdi-account-box"></i>
				</div>

				<div class="form-wrapper">
					<input type="text" name="phoneNumber" placeholder="휴대폰번호"
						class="form-control"> <i class="zmdi  zmdi-phone"></i>
				</div>

				<div class="form-wrapper">
					<input type="email" name="email" placeholder="이메일"
						class="form-control"> <i class="zmdi zmdi-email"></i>
				</div>


				<input style="
				color: black; font-family: 'Poppins-Regular';border: none;width: 164px;
				height: 51px;margin: auto;margin-top: 40px; cursor: pointer;display: flex;align-items: center;justify-content: center;
				padding: 0; background: black;font-size: 15px;color: #fff;vertical-align: middle;-webkit-transform: perspective(1px) translateZ(0);
				transform: perspective(1px) translateZ(0);-webkit-transition-duration: 0.3s;transition-duration: 0.3s;text-align: center;font-size: 13px;"
				type="submit" class="registerButton clickedButton" value="회원가입 하기">
					
			</form>
		</div>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>