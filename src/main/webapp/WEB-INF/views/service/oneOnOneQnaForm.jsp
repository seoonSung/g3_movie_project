<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function readURL(input) {
		var file = input.files[0] //파일에 대한 정보
		console.log(file)
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
				//e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
				$('#preview').attr('src', e.target.result);
			}
		}
	}

	function fn_submit() {
		var text = document.getElementById('text').value;
		var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		if (regPhone.test(text) === true) {
		} else
			alert("올바른 연락처를 입력하세요.");
	}

	function emailCheck() {
		var text = document.getElementById('inputEmail').value;

		var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		if (regEmail.test(text) === false) {
			alert('올바른 이메일을 입력해주세요.');
		}
	}
</script>
<script data-cfasync="false" type="text/javascript" 
src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js">
</script> 
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div align="center">
		<form method="post" class="gform" action="${contextPath }/service/emailSend">
			<br>
			<br>
			<br>
			<table border="1">
				<tr>
					<th><b>문의내용</b></th>
					<td><select id="sort" name="sort" size="1">
							<option value="">선택하세요.</option>
							<option value="예약변경 및 취소">예약변경 및 취소</option>
							<option value="불편사항">불편사항</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
					</select></td>
				</tr>
				<tr>
					<th><b>수신자</b></th>
					<td><input type="text" name="receiver" value="gthreeteam@gmail.com"
						readonly /></td>
				</tr>
				<tr>
					<th><b>작성자</b></th>
					<td><input type="text" name="id" value="${loginUser }"
						readonly /></td>
				</tr>
				<tr>
					<th><b>이메일</b></th>
					<td><input type="email" name="email" id="inputEmail"
						onchange="emailCheck()" value="${List.email }" required></td>
				</tr>
				<tr>
					<th><b>연락처</b></th>
					<td><input type="text" value="${List.phonenumber }" name="phonenumber"
						onchange="phonenumber(this)" maxlength="13" required /></td>
				</tr>
				<tr>
					<th><b>제목</b></th>
					<td><input type="text" name="title" required autofocus/></td>
				</tr>
				<tr>
					<th><b>내용</b></th>
					<td><textarea name="content" rows="10" cols="50" required></textarea></td>
				</tr>
			</table>
			<br>
				<div text-align="center">
					<input type="submit" value="문의하기" onclick="location.href='${contextPath}/qnaboard/main'"/>
					<input type="button"
						onclick="location.href='${contextPath}/qnaboard/main'"
						value="취소" />
				</div>
		</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>