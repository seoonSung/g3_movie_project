<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	       reader.onload = function (e) { // 파일 로드한 값을 표현한다
	        //e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
	         $('#preview').attr('src', e.target.result);
	        }
	    }
	}  
	
	$(document).on("keyup", ".phoneNumber", function() {
			$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
		});
</script>
</head>
<body>
<c:import url="../default/header.jsp" />
<div align="center">
	<form method="post" action="${contextPath}/service/oneOnOneQna" enctype="multipart/form-data" >
	<br><br><br>
	<table>
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
			<th><b>작성자</b></th>
			<td><input type="text" name="id" value="${loginUser }" readonly /></td>
		</tr>
		<tr>
			<th><b>이메일</b></th>
			<td><input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus></td>
		</tr>
		<tr>
			<th><b>연락처</b></th>
			<td><input type="text" class="phoneNumber" /></td>
		</tr>
		<tr>
			<th><b>제목</b></th>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<th><b>내용</b></th>
			<td><textarea name="content" rows="10" cols="50"></textarea></td>
		</tr>
		<tr>
			<th><b>이미지파일 첨부</b></th>
			<td><input type="file" name="image_file_name" onchange="readURL(this);" /> 
		   		<img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="문의하기" /></td>
			<td><input type="button" onclick="location.href='${contextPath}/service/mainService'" value="취소" /></td>
		</tr>
	</table>
	</form>
</div>
<c:import url="../default/footer.jsp" />
</body>
</html>