<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<%@ include file="/WEB-INF/views/Community/set.jsp"%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<title>board</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(document).on('click', '#btnList', function(){ //목록으로 이동

		location.href = "${pageContext.request.contextPath}/main/communityMain";

	});
	
	$(document).on('click', '#btnUpdate', function(){ //수정으로 이동

		var url = "${pageContext.request.contextPath}/main/communityModifyForm";

		url = url + "?num="+${communityPost.num};

		location.href = url;

	});
	
	$(document).on('click', '#btnDelete', function(){ //삭제버튼

	    var url = "${pageContext.request.contextPath}/main/delete";

	    url = url + "?num=" + ${communityPost.num};

			location.href = url;

		});
	
	function showReplyList(){
		 $.ajax({
	         url:"getReplyList/"+${communityPost.num},
	         type:"GET", 
	         dataType:"json", //리턴방식
	         success: function(rep){ //rep는 list방식으로 돌아온다.
	            let html = ""         //html형식으로 
	            rep.forEach(function(data){ //forEach문으로 씀
	               let date = new Date(data.times)
	               let writeDate = date.getFullYear()+"년"+(date.getMonth()+1)+"월"
	               writeDate += date.getDate()+"일"+date.getHours()+"시"
	               writeDate += date.getMinutes()+"분"+date.getSeconds()+"초"
	               html += "<div align='left'><b>아이디 : </b>"+data.id+"님 / ";  //html형식으로 저장
	               html += "<b>작성일</b> : "+writeDate+"<br>"
	               html += "<b>제목</b> : "+data.title+"<br>"
	               html += "<b>내용</b> : "+data.content+"<hr></div>"
	        
	               
	            })
	            
	            $("#replyList").html(html)  //reply라는아이디 값을 가지고 있는 곳에 html형식으로 넣어주겠다.
	         },error:function(){
	            alert('데이터를 가져올 수 없습니다')
	         }
	      })
	   }
</script>



</head>

<body onload="showReplyList()"> <!-- 페이지를 읽으면 showReplyList() 함수 호출 -->
<c:import url="../default/header.jsp"/>
	<article>

		<div class="container" role="main">

			<div class="bg-white rounded shadow-sm">

				<div class="board_title"><c:out value="${communityPost.title}"/></div>
				<!-- 각 class="이름" <- resources/common/css/common.css 파일에 설정해둠 -->
				<div class="board_info_box">

					<span class="board_author"><c:out value="${communityPost.id}"/>,</span><span class="board_date"><c:out value="${communityPost.times}"/></span>

				</div>

				<div class="board_content">${communityPost.content}</div>

				

			</div>

			

			<div style="margin-top : 20px">

				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

				<!-- Reply Form {s} -->

			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">

				<form:form name="form" id="form" role="form" modelAttribute="CommunityReplyDTO" method="post">

				<form:hidden path="wrnum" id="wrnum"/>

				<div class="row">

					<div class="col-sm-10">

						<form:textarea path="content" id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></form:textarea>

					</div>

					<div class="col-sm-2">

						<form:input path="id" class="form-control" id="id" placeholder="댓글 작성자"></form:input>

						<button type="button" class="btn btn-sm btn-primary" id="btnReplySave" style="width: 100%; margin-top: 10px"> 저 장 </button>

					</div>

				</div>

				</form:form>

			</div>

			<!-- Reply Form {e} -->

			

			<!-- Reply List {s}-->

			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">

				<h6 class="border-bottom pb-2 mb-0">Reply list</h6>

				<div id="replyList"></div>

			</div> 

			<!-- Reply List {e}-->


		</div>

		

	</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
