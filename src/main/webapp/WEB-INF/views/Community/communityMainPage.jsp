<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/Community/set.jsp"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<script>

	$(document).on('click', '#btnWriteForm', function(e){ //글쓰기

		e.preventDefault();

		

		location.href = "${pageContext.request.contextPath}/main/communityWrite";

	});


function fn_contentView(num){ //게시글의 num을 넘겨준다(글번호)(게시글 상세보기- 제목클릭)

		var url = "${pageContext.request.contextPath}/main/communityPost";

		url = url + "?num="+num;

		location.href = url;

	}
$(document).on('click', '#btnSearch', function(e){

	e.preventDefault();

	var url = "${pageContext.request.contextPath}/main/communityMain";

	url = url + "?searchOption=" + $('#searchOption').val();

	url = url + "&keyword=" + $('#keyword').val();

	location.href = url;

	console.log(url);

});
</script>	
</head>

<body>

<c:import url="../default/header.jsp"/>
<article>
	<div class="container">
		<div class="table-responsive">
	<table class="table table-striped table-sm">

		<colgroup>

			<col style="width:5%;" />

			<col style="width:auto;" />

			<col style="width:15%;" />

			<col style="width:10%;" />

			<col style="width:10%;" />

		</colgroup>

		<thead>

			<tr>

				<th>NO</th>

				<th>글제목</th>

				<th>작성자</th>

				<th>조회수</th>

				<th>작성일</th>

			</tr>

		</thead>

		<tbody>

			<c:choose>

				<c:when test="${empty boardList }" >

					<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>

				</c:when> 

				<c:when test="${!empty boardList}">

					<c:forEach var="list" items="${boardList}">

						<tr>

							<td><c:out value="${list.num}"/></td>

							<td><!-- 클릭 했을때 fn_contentView() 함수 호출 -->
							<a href="#" onClick="fn_contentView(<c:out value="${list.num }"/>)">
								<c:out value="${list.title}"/>
							</a>
							</td>

							<td><c:out value="${list.id}"/></td>

							<td><c:out value="${list.hit}"/></td>

							<td><c:out value="${list.times}"/></td>

						</tr>

					</c:forEach>

				</c:when>

			</c:choose>

		</tbody>

	</table>
		</div>
			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>

			</div>

	</div>
	
	<div><h3>페이징 추가해야함</h3></div>
	<!-- search{s} -->

		<div class="form-group row justify-content-center">

			<div class="w100" style="padding-right:10px">

				<select class="form-control form-control-sm" name="searchOption" id="searchOption">


					<option value="title">제목</option>

					<option value="Content">본문</option>

					<option value="id">작성자</option>

				</select>

			</div>

			<div class="w300" style="padding-right:10px">

				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">

			</div>

			<div>

				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>

			</div>

		</div>

		<!-- search{e} -->

	
</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
