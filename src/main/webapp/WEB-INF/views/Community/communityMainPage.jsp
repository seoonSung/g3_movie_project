<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/Community/set.jsp"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	$(document).on('click', '#loginA', function(e){ //알림
	
		e.preventDefault(); // 1. a 태그를 눌렀을때도 href 링크로 이동하지 않게 할 경우

							// 2. form 안에 submit 역할을 하는 버튼을 눌렀어도 새로 실행하지 않게 하고싶을 경우 (submit은 작동됨)

		alert('로그인 후 이용해주세요.');	
		
	
		location.href = "${pageContext.request.contextPath}/member/login";
	
	});
	
	$(document).on('click', '#btnWriteForm', function(e){ //글쓰기

		e.preventDefault();

		

		location.href = "${pageContext.request.contextPath}/main/communityWrite";

	});

function paging(pageNum,searchOption,keyword){ //페이징

	var url = "${pageContext.request.contextPath}/main/communityMain";
	
	url = url + "?searchOption=" + searchOption;

	url = url + "&keyword=" + keyword;
	
	url = url + "&pageNum="+pageNum;
	
	location.href = url;
}
	
function fn_contentView(num,pageNum,searchOption,keyword){ 
	//게시글의 num을 넘겨준다(글번호)(게시글 상세보기- 제목클릭)
	// 게시글에서 목록버튼을 눌렀을때 첫페이지가 아닌 이전페이지로 돌려주기 위해 pagenum, searchOption, keyword
	// 값을 같이 넘겨준 것
		var url = "${pageContext.request.contextPath}/main/communityPost";
		
		url = url + "?num="+num;
		
		url = url + "&pageNum="+pageNum;
		
		url = url + "&searchOption="+searchOption;
		
		url = url + "&keyword="+keyword;

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
<style type="text/css">
.container {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  margin-top: 40px;
}

</style>
</head>

<body>

<c:import url="../default/header.jsp"/>
<article>
	<div class="container">
	게시글 수: ${ac }
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
			<c:choose>
				<c:when test="${loginUser != null }">
				<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>
				</c:when>
				<c:otherwise>
				<button type="button" class="btn btn-sm btn-primary" id="loginA">글쓰기</button>
				</c:otherwise>
			</c:choose>	
			</div>

		</div>

		<!-- search{e} -->

		<div class="table-responsive">
	<table class="table table-striped table-sm">

		<colgroup>

			<col style="width:5%;" />

			<col style="width:auto;" />

			<col style="width:10%;" />
	
			<col style="width:10%;" />

			<col style="width:10%;" />

			<col style="width:10%;" />

		</colgroup>

		<thead>
			
			<tr>

				<th>NO</th>

				<th>글제목</th>
				
				<th>추천수</th>

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
					<c:set var="wn" value="${startRow}"/>
					<c:forEach var="boardList" items="${boardList}">

						<tr>
						<td>${wn } </td>	<!-- 글번호 -->
							<td><!-- 클릭 했을때 fn_contentView() 함수 호출 -->
							<a href="#" onClick="fn_contentView(${boardList.num },${pN },'${so }','${ky }')">
								<c:out value="${boardList.title}"/>
									<c:if test="${boardList.recnt > 0 }"> <!-- 댓글이 있으면 옆에 빨간 글씨로 표시 -->
									<span style="color: red;">
									(${boardList.recnt })
									</span>
									</c:if>
							</a>
							</td>
							
							<td></td>
							
							<td><c:out value="${boardList.id}"/></td>

							<td><c:out value="${boardList.hit}"/></td>

							<td><c:out value="${boardList.times}"/></td>
							
							
						</tr>
					<c:set var="wn" value="${wn-1 }"></c:set>
					</c:forEach>

				</c:when>

			</c:choose>

		</tbody>

	</table>
		</div>
			
			<!-- 페이징 -->

				<div id="paginationBox">
				
					<ul class="pagination justify-content-center">
					<c:choose>
					<c:when test="${pN == 1 }"> <!-- 1번 페이지는 버튼 작동 x -->
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>
						
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" onClick="paging(1, '${so }', '${ky }')" href="#">&laquo;</a></li>
					</c:otherwise>
					</c:choose>
					
					<c:choose>
					<c:when test="${pN == 1 }"> <!-- 1번 페이지는 next버튼 작동 x -->
						<li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
						
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" onClick="paging(${pN - 1 }, '${so }', '${ky }')" href="#">이전</a></li>
					</c:otherwise>
					</c:choose>
					
					<c:forEach var="pN" begin="${start }" end="${end }"> <!-- 현재페이지 색깔 표시 -->
						<c:choose>
						<c:when test="${pN == currentPage}">
						<li class="page-item active">
						<a class="page-link"  
						onClick="paging(${pN },'${so }','${ky }')"
						href="#">${pN }
						</a>
						</li>
						</c:when>
						<c:otherwise>
						<li class="page-item">
						<a class="page-link"  
						onClick="paging(${pN },'${so }','${ky }')"
						href="#">${pN }
						</a>
						</li>
						</c:otherwise>
						</c:choose>
					</c:forEach>
						
					<c:choose>
					<c:when test="${repeat eq pN}"> <!-- 마지막 페이지는 next버튼 작동 x -->
					<li class="page-item disabled"><a class="page-link"  href="#">다음</a></li>
					</c:when>
					<c:otherwise>
					<li class="page-item"><a class="page-link" onClick="paging(${pN + 1 }, '${so }', '${ky }')" href="#">다음</a></li>
					</c:otherwise>
					</c:choose>
					
					<c:choose>
					<c:when test="${repeat eq pN}"> <!-- 마지막 페이지는 버튼 작동 x -->
					<li class="page-item disabled"><a class="page-link"  href="#">&raquo;</a></li>
					</c:when>
					<c:otherwise>
					<li class="page-item"><a class="page-link" onClick="paging(${repeat }, '${so }', '${ky }')" href="#">&raquo;</a></li>
					</c:otherwise>
					</c:choose>
						
					</ul>
				
			</div>
	
		</div>	
</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
