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
			style="background-image: url('https://img.megabox.co.kr/SharedImg/2021/12/09/V4JC05frxJ4qBWlFe7mF7mWfCSGMt3mq_570.jpg');"></div>
		<div class="bg-pattern"></div>
		<div class="bg-mask"></div>

		<!-- movie-detail-cont -->
		<div class="movie-detail-cont">



			<!-- 개봉 예매가능-->





			<p class="contents-type"></p>
			<p class="title">매트릭스: 리저렉션</p>
			<p class="title-eng">The Matrix Resurrections</p>









			<div class="btn-util">
				<button type="button" title="보고싶어 안함" class="btn btn-like"
					rpst-movie-no="21070700">
					<i class="iconset ico-heart-line"></i> <span title="보고싶어 한 명수"
						id="intrstCnt"> 949 </span>
				</button>





			</div>










			<!-- info -->



			<div class="info">
				<div class="score">
					<p class="tit">실관람 평점</p>
					<div class="number gt" id="mainMegaScore">
						<!--  <div class="number lt" id="mainMegaScore">
					<p title="관람 전 점수" class="before"><em>0</em><span class="ir">점</span></p>
					<p title="관람 후 점수" class="after"><em>8.7</em><span class="ir">점</span></p> -->
						<p title="실관람 평점" class="before">
							<em>8.7점</em>
						</p>
					</div>
				</div>





			</div>
			<!--// info -->

			<div class="poster">
				<div class="wrap">

					<p class="movie-grade age-all">전체 관람가</p>





					<img
						src="https://img.megabox.co.kr/SharedImg/2021/12/09/zmGroljDQtGcKUYrY6xMdhErBIIkcutu_420.jpg"
						alt="매트릭스: 리저렉션">
				</div>
			</div>












			<div class="reserve screen-type col-2">
				<div class="reserve">


					<a href="#" class="btn reserve" title="영화 예매하기">예매</a>









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
				선택은 당신의 것, 날아오를 시간이다!<br> <br>토마스 앤더슨은 ‘자신’의 현실이 물리적
				구성개념인지 아니면 정신적 구성개념인지 알아내기 위해 이번에도 흰 토끼를 따라가야 한다.<br>토마스, 아니
				네오가 배운 게 있다면 비록 환상이라 할지라도 선택이야말로 매트릭스를 탈출할 유일한 길이라는 것이다.<br>물론
				네오는 무엇을 해야 할지 이미 알고 있다.<br>그가 아직 모르는 사실은 이 새로운 버전의 매트릭스가 그 어느
				때보다도 강력하고, 확고부동하고, 위험하다는 것이다.<br> <br>평범한 일상과 그 이면에 놓여 있는
				또 다른 세계,<br>두 개의 현실이 존재하는 세상에서 운명처럼 인류를 위해 다시 깨어난 구원자 네오.<br>빨간
				약과 파란 약 중 어떤 것을 선택할 것인가?
			</div>
		</div>

		<div class="movie-info infoContent">
			<p>상영타입 : 2D ATMOS(자막), 2D Dolby(자막), 2D(자막)</p>

			<div class="line">
				<p>감독&nbsp;: 라나 워쇼스키</p>
				<p>장르&nbsp;: SF, 액션 / 148 분</p>
				<p>등급&nbsp;: 15세이상관람가</p>
				<p>개봉일&nbsp;: 2021.12.22</p>
				<!--           -->
			</div>
			<p>출연진&nbsp;: 키아누 리브스, 캐리 앤 모스, 닐 패트릭 해리스, 제이다 핀켓 스미스, 야히아 압둘 마틴
				2세, 조나단 그로프, 프리얀카 초프라</p>
		</div>
		<div class="tab-list fixed">
			<ul>
				<li class="on"><a href="#">관람평</a></li>

			</ul>
		</div>
		<br>
		<table border=1>
			<tr>

				<th>id</th>
				<th>날짜</th>
				<th>좋아요</th>
				<th>리뷰</th>
				<th>평점</th>
			</tr>
			<c:if test="${reviewList.size() == 0 }">
				<tr>
					<td colspan="6">저장 데이터 없음</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${reviewList }">
				<tr>

					<td>${dto.id }</td>
					<td>${dto.days }</td>
					<td>${dto.likes }</td>
					<td>${dto.review }</td>
					<td>${dto.avgRe }</td>
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
		<form id="fo" action="review1" method="post">

			<div class="modal_wrap">

				<div id="point-write-form" class="review_ly"
					style="top: 150px; display: block;">
					<strong class="ly_tit">내 평점 등록</strong>
					<div class="ly_inner">
						<strong class="review_tit">매트릭스: 리저렉션</strong>

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
						<input type="hidden" name="number" value="3">



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
		<br> <br>
		<div class="tab-list fixed">
			<ul>
				<li class="on"><a href="#">예고편</a></li>

			</ul>
		</div>
		<br>
		<iframe width="1100" height="520"
			src="https://www.youtube.com/embed/yEPgqn5f1uk"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<br> <br>
		<iframe width="1100" height="520"
			src="https://www.youtube.com/embed/-5BrUWtDHfE"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>













	<c:import url="../default/footer.jsp" />
</body>
</html>