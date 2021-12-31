<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.moviename {
   color: #fff;
   border-bottom: 2px solid rgba(255, 255, 255, 0.2);
}

.moviename2 {
   color: #fff;
}

body, ul, li {
   margin: 0;
   padding: 0;
   list-style: none;
}

a {
   color: inherit;
   text-decoration: none;
}

.con {
   margin-left: auto;
   margin-right: auto;
}

.logo-bar {
   margin-top: 20px;
   text-align: center;
}

.img-box  img {
   width: 100%;
   display: block;
}

.con {
   max-width: 1000px;
}

.bn-box-1 {
   margin-top: 20px;
}

.list-box-1 ul li {
   width: 25%;
   padding: 0 10px;
   margin-top: 10px;
}

.cell {
   float: left;
   box-sizing: border-box;
}

.row::after {
   content: "";
   display: block;
   clear: both;
}

.list-box-1 ul {
   margin: 0 10px;
}

.main-movie {
   display: block;
   position: relative;
   min-height: 880px;
   padding: 0 0 80px 0; /* background-color:#222; */
}

.main-movie .bg {
   overflow: hidden;
   position: absolute;
   z-index: 2;
   width: 100%;
   min-width: 1100px;
   height: 100%;
   margin: 0 auto;
   /* background-attachment:scroll; background-position:center; background-repeat:no-repeat; background-size:100% auto; */
}

.main-movie .bg:before {
   content: '';
   display: block;
   position: absolute;
   left: 0;
   top: 0;
   z-index: 2;
   width: 100%;
   height: 100%;
   background: -moz-linear-gradient(left, rgba(85, 63, 5, 1) 0%,
      rgba(23, 17, 1, 0) 50%, rgba(85, 63, 5, 1) 100%);
   background: -webkit-linear-gradient(left, rgba(85, 63, 5, 1) 0%,
      rgba(23, 17, 1, 0) 50%, rgba(85, 63, 5, 1) 100%);
   background: -o-linear-gradient(left, rgba(85, 63, 5, 1) 0%,
      rgba(23, 17, 1, 0) 50%, rgba(85, 63, 5, 1) 100%);
   background: -ms-linear-gradient(left, rgba(85, 63, 5, 1) 0%,
      rgba(23, 17, 1, 0) 50%, rgba(85, 63, 5, 1) 100%);
   background: linear-gradient(to right, rgba(85, 63, 5, 1) 0%,
      rgba(23, 17, 1, 0) 50%, rgba(85, 63, 5, 1) 100%);
}

.main-movie .bg:after {
   content: '';
   display: block;
   position: absolute;
   left: 0;
   top: 0;
   right: 0;
   bottom: 0;
   z-index: 2;
   background-color: rgba(3, 1, 21, 0.7);
}

.main-movie .bg .bg-pattern {
   position: absolute;
   left: 0;
   top: 0;
   z-index: 3;
   width: 100%;
   height: 100%;
   background: url('../images/movie/bg-movie-detail-pattern.png') repeat 0
      0;
}

.main-movie .bg img {
   display: block;
   width: 100%;
   -webkit-filter: blur(20px);
   -moz-filter: blur(5px);
   -o-filter: blur(5px);
   -ms-filter: blur(5px);
   filter: blur(15px);
}

.main-movie .cont-area {
   overflow: hidden;
   display: block;
   position: relative;
   z-index: 3;
   width: 1100px;
   height: auto;
   margin: 0 auto;
   padding: 0 0 50px 0;
}

.main-movie .cont-area .more-movie {
   display: block;
   position: absolute;
   right: 0;
   top: 177px;
   color: #aaa;
   line-height: 16px;
}

.main-movie .cont-area .more-movie i {
   margin-left: 4px;
}

.main-movie .tab-sorting {
   margin: 130px 0 20px 0;
}

.main-movie .tab-sorting button {
   position: relative;
   display: inline-block;
   margin: 0 18px;
   padding: 0 0 5px 0;
   vertical-align: top;
   color: #aaa;
   border: 0;
   border-bottom: 2px solid transparent;
   background-color: transparent;
}

.main-movie .tab-sorting button.on {
   color: #fff;
   border-bottom: 2px solid rgba(255, 255, 255, 0.2);
}

.main-movie .tab-sorting button:hover {
   color: #fff;
   border-bottom: 2px solid rgba(255, 255, 255, 0.2);
}

.main-movie .tab-sorting button:after {
   content: '';
   display: block;
   position: absolute;
   left: 0;
   top: 50%;
   width: 2px;
   height: 2px;
   margin: -1px 0 0 -18px;
   background-color: rgba(255, 255, 255, 1);
}

.main-movie .tab-sorting button:first-child:after {
   display: none;
}

.main-movie-list {
   
}

.main-movie-list>ol {
   display: block;
   width: 100%;
}

.main-movie-list>ol:before, .main-movie-list>ol:after {
   content: '';
   display: table;
}

.main-movie-list>ol:after {
   clear: both;
}

.main-movie-list>ol li {
   float: left;
   width: 245px;
   margin-left: 20px;
   padding: 0;
}

.main-movie-list>ol li.first {
   margin-left: 0;
}

.main-movie-list>ol li .movie-list-info {
   overflow: hidden;
   display: block;
   position: relative;
   width: 100%;
   height: 352px;
   border-radius: 5px;
   background-color: #24202b;
}

.main-movie-list>ol li .movie-list-info .screen-type2 {
   position: absolute;
   right: 10px;
   top: 10px;
}

.main-movie-list>ol li .movie-list-info .screen-type2 p {
   display: inline-block;
   margin: 0 0 0 4px;
   padding: 8px;
   border-radius: 3px;
   color: #fff;
   background-color: rgba(0, 0, 0, 0.6);
}

.main-movie-list>ol li .movie-list-info .screen-type2 img {
   display: block;
}

.main-movie-list>ol li .movie-list-info .rank {
   position: absolute;
   left: 0;
   top: 0;
   width: 100%;
   height: 150px;
   color: #fff;
   padding: 10px 0 0 15px;
   line-height: 1.1;
   font-size: 2em;
   font-style: italic;
   font-family: 'Roboto';
   font-weight: 300;
   color: #fff;
   text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.8);
   background: url('../images/main/bg-main-movie-rank.png') no-repeat 0 0;
}

.main-movie-list>ol li .movie-list-info img.poster {
   display: block;
   width: 245px;
   height: 352px;
   border-radius: 5px;
}

.main-movie-list>ol li .movie-list-info .wrap {
   display: none;
   position: absolute;
   left: 0;
   top: 0;
   bottom: 0;
   right: 0;
   padding: 25px;
   color: #fff;
   background-color: rgba(0, 0, 0, 0.8);
}

.main-movie-list>ol li .movie-list-info .wrap:hover, .main-movie-list>ol li .movie-list-info .wrap:focus
   {
   color: #fff;
   text-decoration: none;
}

.main-movie-list>ol li .movie-list-info .wrap .summary {
   overflow: hidden;
   height: 152px;
}

.main-movie-list>ol li .movie-list-info .wrap .score {
   overflow: hidden;
   position: absolute;
   left: 20px;
   right: 20px;
   bottom: 20px;
   padding: 10px 0 0 0;
   text-align: center;
   border-top: 1px solid #3c3c3c;
   text-align: center;
}

.main-movie-list>ol li .movie-list-info .wrap .score .preview {
   display: inline-block;
   overflow: hidden;
   vertical-align: middle;
   line-height: 36px;
}

.main-movie-list>ol li .movie-list-info .wrap .score .preview .tit {
   display: block;
   float: left;
   margin: 0 19px 0 0;
   font-size: 0.8667em;
}

.main-movie-list>ol li .movie-list-info .wrap .score .preview .number {
   float: left;
   font-size: 1.6em;
   color: #59bec9;
}

.main-movie-list>ol li .movie-list-info .wrap .score .review {
   display: inline-block;
   overflow: hidden;
   vertical-align: middle;
   line-height: 36px;
}

.main-movie-list>ol li .movie-list-info .wrap .score .review .tit {
   display: block;
   float: right;
   margin: 0 0 0 19px;
   font-size: 0.8667em;
}

.main-movie-list>ol li .movie-list-info .wrap .score .review .number {
   float: left;
   font-size: 1.6em;
   color: #c698f4;
}

.main-movie-list>ol li .movie-list-info .wrap .score .sign {
   display: inline-block;
   overflow: hidden;
   width: 10px;
   height: 16px;
   margin: 0 5px;
   vertical-align: middle;
   text-indent: -999px;
   background-position: center;
   background-repeat: no-repeat;
}

.main-movie-list>ol li .movie-list-info .wrap .score .sign.small {
   background-image: url('../images/common/bg/bg-arr-white-right.png');
}

.main-movie-list>ol li .movie-list-info .wrap .score .sign.big {
   background-image: url('../images/common/bg/bg-arr-white-left.png');
}

.main-movie-list>ol li .movie-list-info .wrap .score .sign.equal {
   background-image: url('../images/movie/bg-arr-score-equal.png');
}

.main-movie-list>ol li .btn-util {
   overflow: hidden;
   position: relative;
   margin-top: 10px;
   padding: 0 0 0 85px;
   text-align: left;
}

.main-movie-list>ol li .btn-util .btn-like {
   position: absolute;
   left: 0;
   top: 0;
   width: 80px;
   height: 36px;
   line-height: 34px;
   margin: 0;
   padding: 0 5px;
   color: #fff;
   font-size: 0.8667em;
   border-color: #555;
   background-color: rgba(0, 0, 0, 0.4)
}

.main-movie-list>ol li .btn-util .case {
   
}

.main-movie-list>ol li .btn-util .case .button {
   display: block;
   float: left;
   width: 100%;
   margin: 0;
   padding: 0;
   border-radius: 4px;
}

.main-movie-list>ol li .btn-util .case.col-2 .button {
   width: 50%;
   border-radius: 0 4px 4px 0;
}

.main-movie-list>ol li .btn-util .case.col-2 .button:first-child {
   border-radius: 4px 0 0 4px;
}
</style>
</head>
<body>
   <c:import url="../default/header.jsp" />




   <div id="main_section01" class="section main-movie">
      <div class="bg">
         <div class="bg-pattern"></div>
         <img
            src="https://img.megabox.co.kr/SharedImg/2021/12/16/pP1d3DrHmo5d4rcb4ZLoBsMScFRHlbKn_380.jpg"
            alt="스파이더맨 노웨이홈_ 2차포스터 절찬상영중.jpg" onerror="noImg(this, 'main');">
      </div>


      <div class="cont-area">


         <div class="tab-sorting">
            <button type="button" class="on" sort="boxoRankList" name="btnSort">박스오피스</button>

         </div>




         <!-- main-movie-list -->
         <div class="main-movie-list">
            <ol class="list">


               <!-- 박스오피스 종료 -->
               <!-- 박스오피스 시작 -->
               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
               <li name="li_boxoRankList" class="first"><a href="movie2"
                  class="movie-list-info" title="영화상세 보기">

                     <p class="rank">
                        1<span class="ir">위</span>
                     </p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
                     src="https://img.megabox.co.kr/SharedImg/2021/12/16/ixl5QxDVs5Gn8nQN3rslK8BUmgFVklj8_420.jpg"
                     alt="스파이더맨: 노 웨이 홈" class="poster" onerror="noImg(this, 'main');">


               </a>
                  <p class="moviename">스파이더맨 : 노 웨이홈</p>
                  <p class="moviename2">개봉일 : 2021.12.15</p></li>
               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
               <li name="li_boxoRankList" class=""><a
                  href="movie1"
                  class="movie-list-info" title="영화상세 보기">

                     <p class="rank">
                        2<span class="ir">위</span>
                     </p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
                     src="https://img.megabox.co.kr/SharedImg/2021/12/27/25gHj5XQ6zm8zB5VYpJQSH9b6veVrN2n_420.jpg"
                     alt="킹스맨: 퍼스트 에이전트" class="poster" onerror="noImg(this, 'main');">
                     
               </a>

                  <p class="moviename">킹스맨 : 퍼스트 에이전트</p>
                  <p class="moviename2">개봉일 : 2021.12.22</p></li>
               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
               <li name="li_boxoRankList" class=""><a
                  href="movie3"
                  class="movie-list-info" title="영화상세 보기">

                     <p class="rank">
                        3<span class="ir">위</span>
                     </p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
                     src="https://img.megabox.co.kr/SharedImg/2021/12/09/zmGroljDQtGcKUYrY6xMdhErBIIkcutu_420.jpg"
                     alt="매트릭스 : 리저랙션" class="poster"
                     onerror="noImg(this, 'main');">

               </a>
                  <p class="moviename">매트릭스 : 리저랙션</p>
                  <p class="moviename2">개봉일 : 2021.12.22</p></li>
               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
               <li name="li_boxoRankList" class=""><a
                  href="movie4"
                  class="movie-list-info" title="영화상세 보기">

                     <p class="rank">
                        4<span class="ir">위</span>
                     </p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
                     src="https://img.megabox.co.kr/SharedImg/2021/12/10/IfzIFvSnuJV9ZS0W7yfmq89V6hWGKC0s_420.jpg"
                     alt="해피 뉴 이어" class="poster" onerror="noImg(this, 'main');">




               </a>
                  <p class="moviename">해피 뉴 이어</p>
                  <p class="moviename2">개봉일 : 2021.12.29</p></li>
               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

               <!-- 각 map 별 첫번째 li 에 first클래스 추가 -->


            </ol>
         </div>
         <!--// main-movie-list -->



      </div>
      <!--// cont-area  -->
   </div>


   <c:import url="../default/footer.jsp" />

</body>
</html>