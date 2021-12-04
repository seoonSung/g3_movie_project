<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<%@ include file="/WEB-INF/views/Community/set.jsp"%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<title>board</title>



<script>

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

</script>



</head>

<body>
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

		</div>

		

	</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
