<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">


body,ul,li {
	margin:0;
	padding:0;
	list-style:none;

}
a{
	color:inherit;
	text-decoration:none;
}
.con{
	margin-left:auto;
	margin-right:auto;
}

.logo-bar{
	margin-top:20px;
	text-align:center;
}
.img-box  img {
	width:100%;
	display:block;

}

.con {
	max-width:1000px;
}

.bn-box-1{
	margin-top:20px;
}

.list-box-1 ul li{
	
	width:25%;
	padding:0 10px;
	margin-top:20px;
	
	
	
}
.cell{
	float:left;
	box-sizing:border-box;
}

.row::after {
	content:"";
	display:block;
	clear:both;
}

.list-box-1 ul{
	margin:0 -10px;
}

.moviename {
	
   
    
   
}
</style>
<body>
	<c:import url="../default/header.jsp" />


	
	
	
	
	<div class="list-box-1 con">
	<h1>영화 정보</h1>
		<ul class="row">
		
		<li class="cell">
		<div class="img-box">
		<a href="movie1">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/27/25gHj5XQ6zm8zB5VYpJQSH9b6veVrN2n_420.jpg"
            alt="킹스맨 : 퍼스트 에이전트">
          </a>
		</div>
		<p class="moviename">킹스맨 : 퍼스트 에이전트</p>
		<div >개봉일 : 2021.12.22</div>
		
		</li>
		
		<li class="cell">
		<div class="img-box">
		<a href="movie2">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
           </a>
		</div>
		<p class="moviename">스파이더맨: 노 웨이 홈</p>
		<div>개봉일 : 2021.12.15</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
		<a href="movie3">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/09/zmGroljDQtGcKUYrY6xMdhErBIIkcutu_420.jpg"
            alt="매트릭스: 리저렉션">
            </a>
		</div>
		<p class="moviename">매트릭스: 리저렉션</p>
		<div class="prod-price">개봉일 : 2021.12.22</div>
	
		</li>
		
		<li class="cell">
		<div class="img-box">
		<a href="movie4">
			<img
           src="https://img.megabox.co.kr/SharedImg/2021/12/10/IfzIFvSnuJV9ZS0W7yfmq89V6hWGKC0s_420.jpg"
            alt="해피 뉴 이어">
           </a>
		</div>
		<p class="moviename">해피 뉴 이어</p>
		<div>개봉일 : 2021.12.29</div>
	
		</li>
		
		
		
		</ul>
	</div>

	<c:import url="../default/footer.jsp" />

</body>
</html>