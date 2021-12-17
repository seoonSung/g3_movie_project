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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script type="text/javascript">

function slideClick(){
	$(".modal_wrap").slideDown("slow")
}
function slide_hide(){
	$(".modal_wrap").hide()
}
function cancel(){
	alert('로그인 먼저 하세요')
	location.href = '${contextPath}/member/login'
}









</script>
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
.modal_wrap{
	 z-index:100; margin:auto; 
	display:none;
}
.review_ly{
	position: absolute;
    top: 0;
    width: 535px;
    overflow: hidden;
    top: 150px;
    left: 50%;
    margin: 0 0 0 -242px;
    padding-bottom: 35px;
    z-index: 500;
    border-radius: 6px;
    background-color: #fff;
    -webkit-box-shadow: 0 7px 31px rgb(0 0 0 / 50%);
    box-shadow: 0 7px 31px rgb(0 0 0 / 50%);
}
.input_textarea{
	padding: 13px 15px;
    width: 475px;
    height: 140px;
    line-height: 19px;
    border: 0;
    font-size: 14px;
    color: rgba(0,0,0,.3);
    letter-spacing: -0.09px;
    resize: none;
    background: 0;
}
.ly_tit{
	display: block;
    padding: 14px 19px 0;
    height: 50px;
    line-height: 19px;
    color: #fff;
    font-size: 16px;
    font-weight: 600;
    background-color: #2b2b2b;
}
.review_ly .ly_inner {
    padding: 0 30px;
}
div {
    display: block;
}
#wrap.basic #content {
    width: 775px;
    text-align: left;
}
.review_ly .review_tit {
    display: block;
    padding-top: 30px;
    line-height: 27px;
    text-align: center;
    color: #000;
    font-size: 22px;
}
.review_ly .ly_inner .input_star .review_point .st_off {
    overflow: hidden;
    display: inline-block;
    vertical-align: top;
    margin: 1px 0 0 0;
    padding-left: 1px;
    background: url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat;
    background-position: 0 -1060px;
}
.review_ly .ly_inner .input_star .review_point {
    overflow: hidden;
    display: inline-block;
    text-align: center;
}
.review_ly .ly_inner .input_star {
    margin-top: 20px;
    text-align: center;
}
#wrap {
    position: relative;
    min-height: 100%;
    margin: 0 auto;
    padding-top: 7px;
    text-align: left;
    *background: url(https://ssl.pstatic.net/static/movie/2014/04/header_bg.png) repeat-y;
}
.review_ly .ly_inner .input_star .review_point .st_off button:first-child {
    position: absolute;
    top: -9999px;
}
.review_ly .ly_inner .input_star .review_point button {
    display: block;
    overflow: hidden;
    float: left;
    width: 12px;
    height: 24px;
    border: 0;
    background: url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat;
    background-position: -1px -1031px;
    outline: 0;
    text-indent: -9999px;
}
input[type=text], input[type=password], button, input[type=button], input[type=reset], input[type=image], input[type=submit], textarea {
    -webkit-appearance: none;
    -webkit-text-size-adjust: none;
    -webkit-border-radius: 0;
}
.review_ly .ly_inner .input_star .review_point button.on~button {
    background-position: 0 -9999px;
}
.review_ly{position:absolute;top:0;width:535px;overflow:hidden;top:150px;left:50%;margin:0 0 0 -242px;padding-bottom:35px;z-index:500;border-radius:6px;background-color:#fff;-webkit-box-shadow:0 7px 31px rgba(0,0,0,0.5);box-shadow:0 7px 31px rgba(0,0,0,0.5)}

.review_ly .ly_inner{padding:0 30px}
.review_ly .review_tit{display:block;padding-top:30px;line-height:27px;text-align:center;color:#000;font-size:22px}
.review_ly .ly_inner .input_star{margin-top:20px;text-align:center}
.review_ly .ly_inner .input_star .review_point{overflow:hidden;display:inline-block;text-align:center}
.review_ly .ly_inner .input_star .review_point .st_off{overflow:hidden;display:inline-block;vertical-align:top;margin:1px 0 0 0;padding-left:1px;background:url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat;background-position:0 -1060px}
.review_ly .ly_inner .input_star .review_point button{display:block;overflow:hidden;float:left;width:12px;height:24px;border:0;background:url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat;background-position:-1px -1031px;outline:0;text-indent:-9999px}
.review_ly .ly_inner .input_star .review_point .st_r{width:19px;background-position:-13px -1031px}
.review_ly .ly_inner .input_star .review_point .st_off button:first-child{position:absolute;top:-9999px}
.review_ly .ly_inner .input_star .review_point button.on~button{background-position:0 -9999px}
.review_ly .ly_inner .input_star .review_point .st_over button.on~button{background-position:-1px -1031px}
.review_ly .ly_inner .input_star .review_point .st_over button.on~button.st_r{background-position:-13px -1031px}
.review_ly .ly_inner .input_star .review_point .st_over button:hover~button{background-position:0 -9999px!important}
.review_ly .ly_inner .input_star .st_point{display:inline-block;vertical-align:top;margin-left:2px;width:32px;line-height:30px;color:#333;font-size:25px;font-family:tahoma}
.review_ly .ly_inner .input_star .ly_point_wrap{display:inline-block;position:relative;vertical-align:top;margin:3px 0 0 5px;width:25px;height:26px}
.review_ly .ly_inner .input_star .ly_point_wrap .btn_score{display:block;width:25px;height:26px;background:url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat -123px -852px}
.review_ly .ly_inner .input_star .ly_point_wrap .btn_score.on{background-position:-123px -822px}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly{overflow:hidden;position:absolute;top:32px;right:2px;width:107px;box-shadow:0 1px 0 0 rgba(0,0,0,0.06);border:solid 1px #a9a8a8;background-color:#fff;z-index:100}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul{float:left;width:53px}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul+ul{border-left:1px solid #f1f1f1}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul li{width:100%}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul li+li{border-top:1px solid #f1f1f1}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul li button{width:100%;height:27px;color:#333;background:0}
.review_ly .ly_inner .input_star .ly_point_wrap .point_ly ul li button em{font-weight:bold}
.review_ly .ly_inner .input_star .point_notice{margin-top:5px;line-height:17px;text-align:center;color:#999;font-size:14px}
.review_ly .ly_inner .input_choice{margin-top:30px;text-align:center;border-top:1px solid #ededed}
.review_ly .ly_inner .input_choice+.input_choice{margin-top:35px}
.review_ly .ly_inner .input_choice .input_tit{display:block;padding-top:35px;line-height:19px;text-align:center;color:#000;font-weight:bold;font-size:16px;letter-spacing:-0.43px}
.review_ly .ly_inner .input_choice .input_tit em{vertical-align:top;line-height:18px;color:#999;font-size:14px;font-weight:normal}
.review_ly .ly_inner .input_choice .choice_box{overflow:hidden;display:inline-block;position:relative;left:-8px;vertical-align:top;margin-top:20px}
.review_ly .ly_inner .input_choice .choice_box .choice_label{display:block;position:relative;float:left;margin-left:8px;width:70px;line-height:38px;color:#333;font-size:14px;border:solid 1px #dadada;border-radius:5px}
.review_ly .ly_inner .input_choice .choice_box input.checked+.choice_label{color:#ff3a45;font-weight:bold;border-color:#ff3a45}
.review_ly .ly_inner .input_choice .choice_box input.checked+.choice_label:after{content:'';position:absolute;top:4px;right:4px;width:9px;height:7px;background:url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat -131px -1013px}
.review_ly .ly_inner .input_request{position:relative;margin-top:35px;height:144px;border:solid 1px #d0d0d0;background-color:#fbfcfd}

.review_ly .ly_inner .input_request .input_textarea{font-size:14px;line-height:18px;resize:none;color:#333;letter-spacing:-0.09px;font-weight:normal}
.review_ly .ly_inner .input_request .text_length{position:absolute;bottom:10px;right:13px;color:rgba(51,51,51,.5);letter-spacing:-0.09px;font-size:13px}
.review_ly .ly_inner .input_request .text_length em{color:#000;font-weight:bold}
.review_ly .ly_footer{margin-top:35px;border-top:1px solid #ededed}
.review_ly .ly_footer .spoiler_check{padding-top:35px;text-align:center}
.review_ly .ly_footer .spoiler_check .notice_text{display:inline-block;line-height:17px;text-align:center;color:#000;font-weight:normal;font-size:14px;letter-spacing:-0.38px}
.review_ly .ly_footer .spoiler_check .choice_box{overflow:hidden;display:inline-block;vertical-align:top;margin-left:6px}
.review_ly .ly_footer .spoiler_check .choice_box .choice_label{display:block;position:relative;float:left;margin-left:14px;line-height:17px;color:#333;font-size:14px}
.review_ly .ly_footer .spoiler_check .choice_box .choice_label::before{content:'';display:inline-block;vertical-align:top;margin:1px 3px 0 0;width:14px;height:14px;background:url(https://ssl.pstatic.net/static/movie/2019/09/sp_ico3.png) no-repeat;background-position:-106px -976px}
.review_ly .ly_footer .spoiler_check .choice_box input.checked+.choice_label::before{background-position:-85px -976px}
.review_ly .ly_footer .btn_box{margin-top:25px;text-align:center}
.review_ly .ly_footer .btn_box .box_inner{overflow:hidden;display:inline-block;vertical-align:top}
.review_ly .ly_footer .btn_box .box_inner button{float:left;width:120px;height:38px;line-height:38px;font-size:15px;letter-spacing:-0.41px}
.review_ly .ly_footer .btn_box .box_inner .btn_cancel{color:#333;font-weight:500;border:solid 1px #c3c3c3;background-color:#fff}
.review_ly .ly_footer .btn_box .box_inner .btn_complete{margin-left:5px;color:#fff;font-weight:500;border:solid 1px #ff5257;background-color:#ff5257}
.review_ly .ly_footer .btn_box .box_inner .btn_complete:disabled{cursor:default;border:1px solid #999;background-color:#999}
.review{*z-index:50}


/* component */

.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 2.25rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
  margin:0 auto;

}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}
/* explanation */

article {
  background-color:#ffe;
  box-shadow:0 0 1em 1px rgba(0,0,0,.25);
  color:#006;
  font-family:cursive;
  font-style:italic;
  margin:4em;
  max-width:30em;
  padding:2em;
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
	<table border = 1>
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
		
		<div id="point-write-form" class="review_ly" style="top: 150px; display: block;">
            <strong class="ly_tit">내 평점 등록</strong>
			<div class="ly_inner">
				<strong class="review_tit">킬링 카인드: 킬러의 수제자</strong>
					
<div class="star-rating">
  <input type="radio" id="5-stars" checked="checked" name="rating" value="5" />
  <label for="5-stars" class="star">&#9733;</label>
  <input type="radio" id="4-stars" name="rating" value="4" />
  <label for="4-stars" class="star">&#9733;</label>
  <input type="radio" id="3-stars" name="rating" value="3" />
  <label for="3-stars" class="star">&#9733;</label>
  <input type="radio" id="2-stars" name="rating" value="2" />
  <label for="2-stars" class="star">&#9733;</label>
  <input type="radio" id="1-star" name="rating" value="1" />
  <label for="1-star" class="star">&#9733;</label>
</div>


				




				
				
				<div class="input_request">
					<!-- [D] 입력시 active class 추가 부탁드립니다. -->
					<textarea id="ment" name="review" row="1" cols="1" rows="1" class="input_textarea"></textarea>
					
				</div>
				
				

				<div class="ly_footer">
					

					<div class="btn_box">
						<div class="box_inner">
							<button type="button" id="point-form-close" onclick="slide_hide()"class="btn_cancel">취소</button>
							
							<button id="pointAddButton" class="btn_complete">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
		
			
		</form>

			
	<c:import url="../default/footer.jsp" />
</body>
</html>