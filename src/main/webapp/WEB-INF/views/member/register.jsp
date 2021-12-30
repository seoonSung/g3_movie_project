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
let pwc =false;
function passConfirm() {
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		let password = document.getElementById('password');					//비밀번호 
		let passwordConfirm = document.getElementById('passwordConfirm');	//비밀번호 확인 값
		let confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		let correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		let wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
			pwc = "t";
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
			pwc = "f";
		}
	}
	
function register(){
	console.log(idFlag)
    var registerForm = document.getElementById("registerForm");
    let id = registerForm.id.value;
    let pw = registerForm.pw.value;
    let name = registerForm.name.value;
    let phonenumber = registerForm.phonenumber.value;
    let email = registerForm.email.value;
    
    if(idFlag == false || !id ){
        alert("아이디를 확인해주세요")
    }else if(pwc == "f" || !pw){
    	alert("비밀번호를 확인해주세요.")
    }else if(!name || !email || !phonenumber){
    	alert("개인정보를 입력해주세요.")
    }else{
    
    	registerForm.submit();
    }
}
	
</script>

</head>
<body style="background-color:black;">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="wrap">

		<div class="inner" style="margin-top: 70px;">
			<div class="image-holder">
				<img id="poster"
					src="https://file.mk.co.kr/meet/neds/2021/12/image_readtop_2021_1132015_16393571404881744.jpg"
					alt="">
			</div>
			<form action="${contextPath}/member/register" id="registerForm" method="post">
				<p class="register-title">
				<!--  	<img  src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png"> -->
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
					<input type="password" id="passwordConfirm" placeholder="비밀번호 입력" class="form-control" onkeyup="passConfirm()"> <span id ="confirmMsg"></span>
					<i class="zmdi zmdi-lock"></i>
				</div>

				<div class="form-wrapper">
					<input name="name" type="text" placeholder="이름"
						class="form-control"> <i class="zmdi zmdi-account-box"></i>
				</div>

				<div class="form-wrapper">
					<input type="text" name="phonenumber" placeholder="휴대폰번호"
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
				type="button" class="registerButton clickedButton" onclick="register()" value="회원가입 하기">
					
			</form>
		</div>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>