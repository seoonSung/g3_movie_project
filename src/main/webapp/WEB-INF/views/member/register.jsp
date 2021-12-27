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
    $.ajax({
        url: 'idCheck.do',
        type: 'get',
        data: { id: document.querySelector('#id').value },
        success: function(data) {
            console.log(data);
            idCheckMessage(data);
        },
    });
}


function idCheckMessage(data) {
    toastr.options = {
        positionClass: 'toast-top-full-width',
        progressBar: true,
        timeOut: 1000,
    };
    if (id.value.length < 3) {
        toastr.error('최소 4글자 이상의 아이디를 입력해 주세요', '아이디 확인', {
            timeOut: 3000,
        });
        return;
    }

    if (data === 'false') {
        toastr.success('사용할수 있는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = true;
        //registerButton.removeAttribute('disabled');
    } else {
        toastr.error('이미 존재하는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = false;
        //registerButton.setAttribute('disabled', 'true');
    }
}

</script>
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