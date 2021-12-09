<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
</script>
<script src="https://kit.fontawesome.com/1bd9eb3151.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="wrap" style="width: 400px; margin: 0 auto;">
	<br>
		<h1 style="text-align: center"><i class="far fa-question-circle"></i>&nbsp;Q & A</h1>
		<br> <br>
		<form method="post" action="${contextPath}/service/writeSave">
			<b>작성자</b><br>
			<!-- readonly : 읽기 전용 -->
			<input type="text" name="id" value="${loginUser }" readonly /><br>
			<br> <label for="contents" name="contents"><b>문의내용</b></label> <br> <select
				id="sort" name="sort" size="1">
				<option value="">선택하세요.</option>
				<option value="change/cancel">예약변경 및 취소</option>
				<option value="complaint">불편사항</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
			</select> <br> <br> <b>제목</b> <br> <input type="text" size="50"
				name="title" /><br> <br> <b>내용</b> <br>
			<textarea name="content" rows="10" cols="50"></textarea>
			<br> <br> <input type="submit" value="글쓰기" /> <input
				type=button value="목록보기"
				onClick="location.href='${contextPath}/service/qnaBoard'">
		</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>

