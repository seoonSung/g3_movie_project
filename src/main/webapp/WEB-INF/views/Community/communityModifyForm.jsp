<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ include file="/WEB-INF/views/Community/set.jsp"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>write form</title>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(document).on('click', '#btnModify', function(e){

		e.preventDefault();

		

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="${pageContext.request.contextPath}/main/communityMain";

	});

</script>



</head>

<body>
<c:import url="../default/header.jsp"/>
	<article>

		<div class="container" role="main">

			<h2>board Form</h2>

			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/main/modify">

				<div class="mb-3">
					<input type="hidden" name="num" value="${communityPost.num}">
					<label for="title">제목</label>
		
					<input type="text" class="form-control" name="title" id="title" value="${communityPost.title }">

				</div>

				

				<div class="mb-3">

					<label for="id">작성자</label>

					<input type="text" class="form-control" name="id" id="id" value="${communityPost.id }">

				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" value="${communityPost.content }" ></textarea>

				</div>

				

				

			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnModify">저장</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div>

	</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
