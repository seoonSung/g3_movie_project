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
.img-box > img {
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
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/11/19/OSwPwX3tSSnxJZMGljSs2tZESq6uFliO_420.jpg"
            alt="킬링 카인드: 킬러의 수제자">
		</div>
		<p class="moviename">킬링 카인드: 킬러의 수제자</p>
		<div >개봉일 : 2021.12.01</div>
	
		</li>
		
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<p class="moviename">스파이더맨: 노 웨이 홈</p>
		<div>개봉일 : 2021.12.15</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/02/E3UIW76SDtxGcGAOqHD7ZsXcJ0y856tf_420.jpg"
            alt="돈룩업">
		</div>
		<p class="moviename">돈룩업</p>
		<div class="prod-price">개봉일 : 2021.12.08</div>
	
		</li>
		
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<div class="prod-name">단가라 0ps</div>
		<div class="prod-price">19,800</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<div class="prod-name">단가라 0ps</div>
		<div class="prod-price">19,800</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<div class="prod-name">단가라 0ps</div>
		<div class="prod-price">19,800</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<div class="prod-name">단가라 0ps</div>
		<div class="prod-price">19,800</div>
	
		</li>
		<li class="cell">
		<div class="img-box">
			<img
            src="https://img.megabox.co.kr/SharedImg/2021/12/07/iec4gByIz1OuAACskdZ0t4i4PfglBgK6_420.jpg"
            alt="스파이더맨: 노 웨이 홈">
		</div>
		<div class="prod-name">단가라 0ps</div>
		<div class="prod-price">19,800</div>
	
		
		
		
		</ul>
	</div>

	<c:import url="../default/footer.jsp" />

</body>
</html>