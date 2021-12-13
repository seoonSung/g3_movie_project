<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<title>Insert title here</title>
</head>
<style type = "text/css">
.movie-detail-page .movie-detail-cont .btn-util {
	padding: 15px 0 0 0
}
* {
	box-sizing: border-box
}
div {
    display: block;
}
.movie-detail-page {
	position: relative;
	z-index: 1;
	height: 520px;
	margin: 0 0 40px 0;
	color: #ccc;
	background-color: #151515
}
body {
	overflow: auto;
	overflow-y: scroll;
	letter-spacing: 0;
	line-height: 1.5;
	
	color: #444;
	
}

.movie-detail-page p {
    margin: 0;
    padding: 0;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.movie-detail-page .movie-detail-cont .title-eng {
    width: 800px;
    padding: 10px 0 0 0;
    font-size: 1.3333em;
    font-family: Roboto;
    color: #fff;
    line-height: 1.1;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
}

.movie-detail-page .movie-detail-cont .btn-util .btn {
    display: inline-block;
    min-width: 100px;
    height: 36px;
    line-height: 34px;
    margin: 0 6px 0 0;
    padding: 0 10px;
    font-size: .9333em;
    color: #fff;
    text-decoration: none;
    text-align: center;
    border: 1px solid #706f72;
    border-radius: 4px;
    background-color: transparent;
}

button {
    cursor: pointer;
    letter-spacing: -.5px;
    font-weight: 400;
    font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
}

button {
    appearance: auto;
    -webkit-writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
img {
    border: 0;
}

.movie-detail-page .movie-detail-cont .poster .wrap {
    position: relative;
    width: 100%;
    height: 100%;
    font-size: 0;
    line-height: 0;
}

.movie-detail-page .movie-detail-cont .poster .wrap img {
    display: block;
    width: 100%;
    height: 100%;
    border-radius: 10px;
}

.movie-detail-page .movie-detail-cont .screen-type .btn.reserve {
    background-color: #080a8a;
}

.movie-detail-page .movie-detail-cont .screen-type .btn:first-child {
    margin-top: 50px;
    margin-left: 30px;
   
}

.movie-detail-page .movie-detail-cont .screen-type.col-2 .btn {
    width: 200px;
    border-radius: 0 5px 5px 0;
}

.movie-detail-page .movie-detail-cont .screen-type.col-2 .btn:first-child {
    border-radius: 5px;
}




.movie-detail-page .bg-img {
	position: absolute;
	left: 50%;
	top: 0;
	z-index: 1;
	width: 1100px;
	margin: 0 0 0 -550px;
	height: 100%;
	background-position: center 0;
	background-repeat: no-repeat;
	background-size: 100% auto;
	opacity: .8
}
.movie-detail-page .bg-img:after {
	content: '';
	display: block;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 2;
	width: 100%;
	height: 100%;
	background-color: rgba(15, 15, 15, .5)
}
.movie-detail-page .bg-pattern {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 3;
	width: 100%;
	height: 100%;
	background:
		url(https://img.megabox.co.kr/static/pc/images/movie/bg-movie-detail-pattern.png)
		repeat-x 0 0
}
.movie-detail-page .bg-mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 4;
	width: 100%;
	height: 100%;
	background: -moz-linear-gradient(left, #0f0f0f 20%, rgba(15, 15, 15, 0)
		50%, #0f0f0f 80%);
	background: -webkit-linear-gradient(left, #0f0f0f 20%, rgba(15, 15, 15, 0)
		50%, #0f0f0f 80%);
	background: -o-linear-gradient(left, #0f0f0f 20%, rgba(15, 15, 15, 0)
		50%, #0f0f0f 80%);
	background: -ms-linear-gradient(left, #0f0f0f 20%, rgba(15, 15, 15, 0)
		50%, #0f0f0f 80%);
	background: linear-gradient(to right, #0f0f0f 20%, rgba(15, 15, 15, 0)
		50%, #0f0f0f 80%)
}
.movie-detail-page .movie-detail-cont {
	position: relative;
	z-index: 4;
	width: 1100px;
	height: 100%;
	margin: 0 auto;
	padding: 55px 0 0 0
}

.movie-detail-page .movie-detail-cont .d-day {
	overflow: hidden;
	display: inline-block;
	height: 22px;
	padding: 0 10px;
	font-size: .8667em;
	line-height: 22px;
	color: #fff;
	border-radius: 3px;
	vertical-align: middle
}

.movie-detail-page .movie-detail-cont .d-day.default {
	background-color: #432e75
}

.movie-detail-page .movie-detail-cont .d-day.theater {
	background-color: #432e75
}

.movie-detail-page .movie-detail-cont .d-day.my {
	background-color: #432e75
}

.movie-detail-page .movie-detail-cont .contents-type {
	display: inline-block;
	margin: 0 0 0 6px;
	line-height: 22px;
	vertical-align: middle
}

.movie-detail-page .movie-detail-cont .title {
	position: static;
	left: inherit;
	top: inherit;
	width: 800px;
	padding: 0;
	color: #fff;
	font-size: 3.0666em;
	font-weight: 400;
	line-height: 1.2;
	text-shadow: 2px 2px 10px rgba(0, 0, 0, .7)
}

.movie-detail-page .movie-detail-cont .title-eng {
	width: 800px;
	padding: 10px 0 0 0;
	font-size: 1.3333em;
	font-family: Roboto;
	color: #fff;
	line-height: 1.1;
	overflow: hidden;
	max-width: 100%;
	white-space: nowrap;
	text-overflow: ellipsis
}

.movie-detail-page .movie-detail-cont .btn-util {
	padding: 15px 0 0 0
}

.movie-detail-page .movie-detail-cont .btn-util .btn {
	display: inline-block;
	min-width: 100px;
	height: 36px;
	line-height: 34px;
	margin: 0 6px 0 0;
	padding: 0 10px;
	font-size: .9333em;
	color: #fff;
	text-decoration: none;
	text-align: center;
	border: 1px solid #706f72;
	border-radius: 4px;
	background-color: transparent
}

.movie-detail-page .movie-detail-cont .btn-util .btn .iconset {
	margin-right: 4px
}

.movie-detail-page .movie-detail-cont .btn-util .btn:hover {
	color: #222;
	background-color: #fff
}

.movie-detail-page .movie-detail-cont .btn-util .btn.on .ico-heart-line,
	.movie-detail-page .movie-detail-cont .btn-util .btn:hover .ico-heart-line
	{
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-heart-on.png)
}

.movie-detail-page .movie-detail-cont .btn-util .btn:hover .ico-sns-line
	{
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-sns-on.png)
}

.movie-detail-page .movie-detail-cont .btn-util .btn:hover .ico-bell-line
	{
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-bell-green.png)
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share {
	position: relative;
	display: inline-block
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap
	{
	display: none
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap
	{
	display: none;
	position: absolute;
	left: 50%;
	top: 54px;
	z-index: 55;
	width: 360px;
	height: 110px;
	margin: 0 0 0 -180px;
	padding: 20px 0 0 0;
	border: 1px solid #d8d9db;
	border-radius: 5px;
	background-color: #fff
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap.on
	{
	display: block
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap .btn
	{
	display: inline-block;
	min-width: 50px;
	margin: 0 4px;
	padding: 48px 0 0 0;
	border: 0;
	font-size: .9333em;
	color: #444;
	line-height: 1.1;
	background-color: transparent;
	background-position: center top;
	background-repeat: no-repeat
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap:before
	{
	content: '';
	position: absolute;
	left: 169px;
	top: -12px;
	display: block;
	width: 22px;
	height: 12px;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/bg/bg-tooltip-arr-top-script.png)
		no-repeat 0 0
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap .cont-area
	{
	position: relative
}

.movie-detail-page .movie-detail-cont .btn-util .sns-share .btn-sns-share-wrap .cont-area .btn-close-common-sns
	{
	overflow: hidden;
	display: block;
	position: absolute;
	right: 10px;
	top: -12px;
	width: 12px;
	height: 12px;
	margin: 0;
	padding: 0;
	border: 0;
	text-indent: -9999px;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/btn/btn-close-common-sns.png)
		no-repeat 0 0
}

.movie-detail-page .movie-detail-cont .info {
	position: absolute;
	left: 0;
	bottom: 45px;
	padding: 0
}

.movie-detail-page .movie-detail-cont .info:after, .movie-detail-page .movie-detail-cont .info:before
	{
	content: '';
	display: table
}

.movie-detail-page .movie-detail-cont .info:after {
	clear: both
}

.movie-detail-page .movie-detail-cont .info .tit {
	display: block;
	padding: 0 0 15px 0;
	line-height: 1.1;
	font-size: .9333em
}

.movie-detail-page .movie-detail-cont .info .score {
	float: left;
	padding: 0
}

.movie-detail-page .movie-detail-cont .info .score .number {
	padding: 0 0 0 30px;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-megabox.png)
		no-repeat 0 center;
	font-family: Roboto, Dotum, '돋움', sans-serif;
	font-weight: 400
}

.movie-detail-page .movie-detail-cont .info .score .number>p {
	display: inline-block;
	vertical-align: middle;
	line-height: 1.1
}

.movie-detail-page .movie-detail-cont .info .score .number .before {
	color: #59bec9
}

.movie-detail-page .movie-detail-cont .info .score .number .after {
	padding: 0 0 0 30px;
	color: #c698f4;
	background-position: 10px center;
	background-repeat: no-repeat
}

.movie-detail-page .movie-detail-cont .info .score .number.lt .before {
	font-size: 1.6em
}

.movie-detail-page .movie-detail-cont .info .score .number.lt .after {
	font-size: 2.1333em;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/movie/bg-arr-score-lt.png)
}

.movie-detail-page .movie-detail-cont .info .score .number.gt .before {
	font-size: 2.1333em
}

.movie-detail-page .movie-detail-cont .info .score .number.gt .after {
	font-size: 1.6em;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/movie/bg-arr-score-gt.png)
}

.movie-detail-page .movie-detail-cont .info .score .number.equal {
	line-height: 35px
}

.movie-detail-page .movie-detail-cont .info .score .number.equal .before
	{
	font-size: 1.6em;
	font-family: Roboto, Dotum, '돋움', sans-serif;
	font-weight: 400
}

.movie-detail-page .movie-detail-cont .info .score .number.equal .after
	{
	padding-left: 26px;
	font-size: 1.6em;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/movie/bg-arr-score-equal.png)
}

.movie-detail-page .movie-detail-cont .info .rate {
	float: left;
	padding: 0 0 0 35px
}

.movie-detail-page .movie-detail-cont .info .rate .cont {
	display: inline-block;
	min-height: 35px;
	padding: 0 0 0 30px;
	vertical-align: middle;
	line-height: 1.1;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-ticket-gray.png)
		no-repeat 0 center
}

.movie-detail-page .movie-detail-cont .info .rate .cont em {
	margin: 0 4px 0 0;
	color: #fff;
	font-size: 2.1333em;
	font-family: Roboto, Dotum, '돋움', sans-serif;
	font-weight: 400
}

.movie-detail-page .movie-detail-cont .info .audience {
	float: left;
	padding: 0 0 0 35px
}

.movie-detail-page .movie-detail-cont .info .audience .tit {
	position: relative
}

.movie-detail-page .movie-detail-cont .info .audience .tooltip-cont {
	position: absolute;
	left: -77px;
	top: -115px
}

.movie-detail-page .movie-detail-cont .info .audience .cont {
	display: inline-block;
	padding: 0 0 0 30px;
	vertical-align: middle;
	line-height: 1.1;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-person.png)
		no-repeat 0 center
}

.movie-detail-page .movie-detail-cont .info .audience .cont em {
	margin: 0 4px 0 0;
	color: #fff;
	font-size: 2.1333em;
	font-family: Roboto, Dotum, '돋움', sans-serif;
	font-weight: 400
}

.movie-detail-page .movie-detail-cont .poster {
	overflow: hidden;
	display: block;
	position: absolute;
	right: 0;
	top: 45px;
	z-index: 2;
	width: 260px;
	height: 374px
}

.movie-detail-page .movie-detail-cont .poster .wrap {
	position: relative;
	width: 100%;
	height: 100%;
	font-size: 0;
	line-height: 0
}

.movie-detail-page .movie-detail-cont .poster .wrap .movie-grade {
	overflow: hidden;
	position: absolute;
	left: 10px;
	top: 10px;
	z-index: 4
}

.movie-detail-page .movie-detail-cont .poster .wrap img {
	display: block;
	width: 100%;
	height: 100%;
	border-radius: 10px
}

.movie-detail-page .movie-detail-cont .poster .wrap .btn-poster-down {
	overflow: hidden;
	display: block;
	position: absolute;
	right: 10px;
	top: 10px;
	width: 36px;
	height: 36px;
	font-size: 0;
	line-height: 0;
	background:
		url(https://img.megabox.co.kr/static/pc/images/movie/btn-poster-down.png)
		no-repeat 0 0;
	opacity: .45
}

.movie-detail-page .movie-detail-cont .screen-type {
	overflow: hidden;
	display: block;
	position: absolute;
	right: 0;
	bottom: 45px;
	width: 260px
}

.movie-detail-page .movie-detail-cont .screen-type .btn {
	display: block;
	float: none;
	height: 50px;
	line-height: 44px;
	font-size: 1.2em;
	margin: 0;
	padding: 0;
	color: #fff;
	text-align: center;
	border: 0;
	border-radius: 5px;
	background-color: transparent;
	text-decoration: none;
	font-weight: 700
}

.movie-detail-page .movie-detail-cont .screen-type .btn.reserve {
	background-color: #329eb1
}


</style>

<body>
<c:import url="../default/header.jsp" />
<div class="movie-detail-page">
		<div class="bg-img"
			style="background-image: url('https://img.megabox.co.kr/SharedImg/2021/11/19/jHBiljBmaXlFveTfR6ifpizsx2AiGy1b_570.jpg');"></div>
		<div class="bg-pattern"></div>
		<div class="bg-mask"></div>

		<!-- movie-detail-cont -->
		<div class="movie-detail-cont">



			<!-- 개봉 예매가능-->





			<p class="contents-type"></p>
			<p class="title">킬링 카인드: 킬러의 수제자</p>
			<p class="title-eng">The Protege</p>









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
						src="https://img.megabox.co.kr/SharedImg/2021/11/19/OSwPwX3tSSnxJZMGljSs2tZESq6uFliO_420.jpg"
            alt="킬링 카인드: 킬러의 수제자"> 
				</div>
			</div>








			<div class="reserve screen-type col-2">
				<div class="reserve">


					<a href="#"
						class="btn reserve" title="영화 예매하기">예매</a> 









				</div>
			</div>
		</div>
		<!--// movie-detail-cont -->
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>