<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<title>Insert title here</title>



<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript">
	function slideClick() {
		$(".modal_wrap").slideDown("slow")
	}
	function slide_hide() {
		$(".modal_wrap").hide()
	}
	function cancel() {
		alert('로그인 먼저 하세요')
		location.href = '${contextPath}/member/login'
	}
</script>
<link rel="stylesheet" href="${contextPath}/resources/css/movie.css">
</head>
<style type="text/css">
</style>

<body>
	<c:import url="../default/header.jsp" />
	<div class="movie-detail-page">
		<div class="bg-img"
			style="background-image: url('https://img.megabox.co.kr/SharedImg/2021/12/27/FZzLnkGKZUDxPqZ6ydUaqWlor8XAaKt6_570.jpg');"></div>
		<div class="bg-pattern"></div>
		<div class="bg-mask"></div>

		<!-- movie-detail-cont -->
		<div class="movie-detail-cont">



			<!-- 개봉 예매가능-->





			<p class="contents-type"></p>
			<p class="title">킹스맨: 퍼스트 에이전트</p>
			<p class="title-eng">THE KING'S MAN</p>









			










			<!-- info -->



			<div class="info">
				<div class="score">
					<p class="tit">실관람 평점</p>
					<div class="number gt" id="mainMegaScore">
						<!--  <div class="number lt" id="mainMegaScore">
					<p title="관람 전 점수" class="before"><em>0</em><span class="ir">점</span></p>
					<p title="관람 후 점수" class="after"><em>8.7</em><span class="ir">점</span></p> -->
						<p title="실관람 평점" class="before">
							<em>${avg}점</em>
						</p>
					</div>
				</div>





			</div>
			<!--// info -->

			<div class="poster">
				<div class="wrap">

					<p class="movie-grade age-all">전체 관람가</p>





					<img
						src="https://img.megabox.co.kr/SharedImg/2021/12/27/25gHj5XQ6zm8zB5VYpJQSH9b6veVrN2n_420.jpg"
						alt="킹스맨: 퍼스트 에이전트">
				</div>
			</div>












			<div class="reserve screen-type col-2">
				<div class="reserve">


					<a href="bookMain" class="btn reserve" title="영화 예매하기">예매</a>









				</div>
			</div>
		</div>
		<!--// movie-detail-cont -->
	</div>
	<div class="inner-wrap">
		<div class="tab-list fixed">
			<ul>
				<li class="on"><a href="#">주요정보</a></li>

			</ul>
		</div>

		<div class="movie-summary infoContent on" id="info">

			<div class="txt">
				12월, 베일에 감춰졌던 킹스맨의 탄생을 목격하라!<br>
				<br>역사상 최악의 폭군들과 범죄자들이 모여<br>수백만 명의 생명을 위협할 전쟁을 모의하는 광기의
				시대.
				<br>이들을 막으려는 한 사람과<br>그가 비밀리에 운영 중인 독립 정보기관,<br>‘킹스맨’의
				최초 미션이 시작된다!
			</div>
			
		</div>

		<div class="movie-info infoContent">
        <p>상영타입 : 2D ATMOS(자막), 2D Dolby(자막), 2D(자막)</p>

        <div class="line">
           <p>감독&nbsp;: 매튜 본</p>
           <p>장르&nbsp;: 액션 / 131 분</p>
           <p>등급&nbsp;: 청소년관람불가</p>
           <p>개봉일&nbsp;: 2021.12.22</p>
  <!--           -->
        </div>
           <p>출연진&nbsp;: 랄프 파인즈, 해리스 딕킨슨, 리스 이판, 젬마 아터튼, 디몬 하운수, 매튜 구드, 톰 홀랜더, 다니엘 브륄, 찰스 댄스, 애런 존슨, 스탠리 투치, 알렉산드라 마리아 라라, 크리스티안 네크라소프</p>
           <br><br><br>
    </div>
		<div class="tab-list fixed">
			<ul>
				<li class="on"><a href="#">관람평</a></li>

			</ul>
		</div>
		<br>
<style>
#main{
padding: 10px;
text-align:center;
}
 #table{
 margin: auto;
width: 100%;
border-top-style:  solid;  
border-collapse:collapse;       
}
  a {
text-decoration: none;
color: black;
 }
 td, th{padding: 10px;
 border-bottom:1px solid #444444;
 }
 td{
text-align:center;
 }
 th{
 background-color: white;
 padding:15px;
 }
  thead tr {
    background-color: #0d47a1;
    color: #ffffff;
  }
  tbody tr:nth-child(2n) {
    
   background-color: rgb(233, 233, 233);
  }
  tbody tr:nth-child(2n+1) {
   background-color:white;
  }
  #num{
  padding: 10px 100px;
  margin-left: 360px;
  }
  .tt{
  width: 270px;
  }
 
</style>
	<div style="margin-top:10px;" class="wrap">
		<table id="table">
			<tr>
				<th>ID</th>
				<th>날짜</th>
				<th>좋아요</th>
				<th>리뷰</th>
				<th>평점</th>
			</tr>
		<c:if test="${reviewList.size() == 0 }">
			<tr>
				<td colspan="5">저장 데이터 없음</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${reviewList}">
			<tr>

				<td>${dto.id}</td>				
				<td>${dto.days}</td>  
				<td>${dto.likes}</td>		
				<td>${dto.review}</td>
				<td>
				<c:if test="${dto.avgRe ==1 }">
				
				
							<i class="fas fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							</c:if>
							<c:if test="${dto.avgRe ==2 }">
				
				
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							</c:if>
							<c:if test="${dto.avgRe ==3 }">
				
				
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							</c:if>
							<c:if test="${dto.avgRe ==4 }">
				
				
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="far fa-star fa-xs"></i>
							</c:if>
							<c:if test="${dto.avgRe ==5 }">
				
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							<i class="fas fa-star fa-xs"></i>
							</c:if>
						</td>				
			</tr>	
		</c:forEach>
		</table>
        <c:choose>
            <c:when test="${loginUser != null }">
                <button type="button" onclick="slideClick()">관람평 등록</button>
            </c:when>
            <c:otherwise>
                <button type="button" onclick="cancel()">관람평 등록</button>
            </c:otherwise>
        </c:choose>
            
				<div align="left" style="padding:10px;">
				<span id="num">
					<c:forEach var="num" begin="1" end="${repeat}">
						<button type="button" onclick="location.href='boardList?num=${num}'">${num}</button>
					</c:forEach>
				</span>
				</div>
		<form id="fo" action="review1" method="post">

			<div class="modal_wrap">

				<div id="point-write-form" class="review_ly"
					style="top: 150px; display: block;">
					<strong class="ly_tit">내 평점 등록</strong>
					<div class="ly_inner">
						<strong class="review_tit">킹스맨: 퍼스트 에이전트</strong>

						<div class="star-rating">
							<input type="radio" id="5-stars" checked="checked" name="rating"
								value="5" /> <label for="5-stars" class="star">&#9733;</label>
							<input type="radio" id="4-stars" name="rating" value="4" /> <label
								for="4-stars" class="star">&#9733;</label> <input type="radio"
								id="3-stars" name="rating" value="3" /> <label for="3-stars"
								class="star">&#9733;</label> <input type="radio" id="2-stars"
								name="rating" value="2" /> <label for="2-stars" class="star">&#9733;</label>
							<input type="radio" id="1-star" name="rating" value="1" /> <label
								for="1-star" class="star">&#9733;</label>
						</div>









						<div class="input_request">

							<textarea id="ment" name="review" row="1" cols="1" rows="1"
								class="input_textarea"></textarea>

						</div>
						<input type="hidden" name="number" value="1"> 



						<div class="ly_footer">


							<div class="btn_box">
								<div class="box_inner">
									<button type="button" id="point-form-close"
										onclick="slide_hide()" class="btn_cancel">취소</button>

									<button id="pointAddButton" class="btn_complete">확인</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		
		</form>
<br><br>
<div class="tab-list fixed">
			<ul>
				<li class="on"><a href="#">예고편</a></li>

			</ul>
		</div>
		<br>
	<iframe width="1100" height="520" src="https://www.youtube.com/embed/K1xdzJHSHTA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<br><br>
	<iframe width="1100" height="520" src="https://www.youtube.com/embed/qmplEPm3RUI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>

	
	







	<c:import url="../default/footer.jsp" />
</body>
</html>