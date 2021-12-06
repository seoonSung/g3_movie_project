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
				// 아이디가 btnSearch 인것을 click 할때마다 이벤트가 일어난다.
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
<!-- 검색기능 -->

		<div class="form-group row justify-content-end" >

			<div class="w100" style="padding-right:10px">

				<select class="form-control form-control-sm" name="searchOption" id="searchOption">
					
					<option value="e">전체</option>
					
					<option value="tc">제목+본문</option>
					
					<option value="title">제목</option>

					<option value="content">본문</option>

					<option value="id">작성자</option>

				</select>

			</div>

			<div class="w300" style="padding-right:10px">

				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">

			</div>

			<div style="padding-right:10px">

				<button  name="btnSearch" class="btn btn-sm btn-primary" id="btnSearch">검색</button>

			</div>
			
			<div style="padding-right:10px">

				<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>

			</div>

		</div>

		<!-- search{e} -->

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
			
			<!-- 페이징 -->

			<div class="row" style="float: none; margin: 100 auto;">
				<div class="col-md-3" style="float: none; margin: 0 auto;">
					<ul class="pagination">
					<c:if test="${pageNum != 1}">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					</c:if>	
							<c:forEach var="pageNum" begin="1" end="${repeat }">
								<li class="page-item"><a class="page-link" href="communityMain?pageNum=${pageNum }">${pageNum }</a></li>
							</c:forEach>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>








		</div>	
</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
