<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#modal_wrap {
	display: none;
	position: fixed;
	z-index: 9;
	margin: 0 auto;
	top: 0;
	left: 0;
	right: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

#first {
	position: fixed;
	z-index: 10;
	margin: 0 auto;
	top: 30px;
	left: 0;
	right: 0;
	display: none;
	background-color: rgba(212, 244, 250, 0.9);
	height: 350px;
	width: 300px;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function slideClick() {
		$("#first").slideDown('slow');
		$("#modal_wrap").show();
	}
	function slide_hide() {
		$("#first").slideUp('fast');
		$("#modal_wrap").hide();
	}
	function rep() {
		/*		-serializeArray-
			var title = $("#title").val()
			var content = $("#content").val()
			let form = {t(key) : title(value), c(key): content(value)}
		*/
		let form = {};
		let arr = $("#frm").serializeArray()
		/*
			arr=[{name:write_no, value:"입력값"},{name:title, value:"입력값"}.....{}]
		*/
		for (i = 0; i < arr.length; i++) {
			form[arr[i].name] = arr[i].value;
		}
		/*
			form={write_no:"입력값", title:"입력값"...}
		*/
		$.ajax({
			url : "addReply",
			type : "POST",
			/*return type*/dataType : "json",
			data : JSON.stringify(form),
			contentType : "application/json;charset=utf-8",
			success : function(list) {
				alert("성공적으로 답글이 달렸습니다.");
				$("#title").val("")
				$("#content").val("")
				replyData()
				slide_hide();
			},
			error : function() {
				alert("문제 발생!")
			}
		});
	}
	function replyData(){
	      $.ajax({
	         url:"replyData/"+${personalData.num}, type:"GET", 
	         dataType:"json",
	         success: function(rep){
	            let html = ""
	            rep.forEach(function(data){
	               let date = new Date(data.write_date)
	               let writeDate = date.getFullYear()+"년"+(date.getMonth()+1)+"월"
	               writeDate += date.getDate()+"일"+date.getHours()+"시"
	               writeDate += date.getMinutes()+"분"+date.getSeconds()+"초"
	               html += "<div align='left'><b>아이디 : </b>"+data.id+"님 / ";
	               html += "<b>작성일</b> : "+writeDate+"<br>"
	               html += "<b>제목</b> : "+data.title+"<br>"
	               html += "<b>내용</b> : "+data.content+"<hr></div>"
	            })
	            $("#reply").html(html)
	         },error:function(){
	            alert('데이터를 가져올 수 없습니다')
	         }
	      })
	   }
	
	function checkDelete(result){
		if(result === "success"){
			alert("삭제되었습니다.")
		}
		delete.button()
	}
</script>
</head>
<body onload="replyData()">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div id="modal_wrap">
		<div id="first">
			<div style="width: 250px; margin: 0 auto; padding-top: 20px;">
				<form id="frm">
					<input type="hidden" name="num"
						value="${personalData.num}"> <b>답글 작성 페이지</b>
					<hr>
					<b>작성자 : ${loginUser}</b>
					<hr>
					<b>제목</b><br>
					<input type="text" id="title" size="30" name="title">
					<hr>
					<b>내용</b><br>
					<textarea name="content" id="content" rows="5" cols="30"></textarea>
					<hr>
					<button type="button" onclick="rep()">답글</button>
					<button type="button" onclick="slide_hide()">취소</button>
				</form>
			</div>
		</div>
	</div>

	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<c:import url="../default/header.jsp" />
	<table border="1" align="center">
		<caption>
			<font size="5"><b>글 보기</b></font>
		</caption>
		<tr>
			<th width="100">글 번호</th>
			<td width="200">${personalData.num}</td>
			<th width="100">작성자</th>
			<td width="200">${personalData.id}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${personalData.title}</td>
			<th>등록일자</th>
			<td>${personalData.saveDate}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="4">${personalData.content}</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><c:if
					test="${ loginUser == personalData.id }">
					<input type="button" value="수정하기"
						onclick="location.href='${contextPath}/service/modifyForm?num=${personalData.num}'">
					<input id="delete" type="button" value="삭제하기"
						onclick="location.href='${contextPath}/service/delete?num=${personalData.num}'">
				</c:if>
					<input type="button" onclick="slideClick()" value="답글달기">
					<input type="button" onclick="location.href='${contextPath}/service/qnaBoard" value="리스트로 돌아가기">
				<hr>
				<div id="reply">
					
				</div>
			</td>
		</tr>
	</table>
	<c:import url="../default/footer.jsp" />

</body>
</html>



