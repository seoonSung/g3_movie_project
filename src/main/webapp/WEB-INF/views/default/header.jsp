<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 

</head>

<style>
.wrap {
 width: 1000px;
  margin: auto;
  margin-top: 150px; 

}
* {
    font-size: 11px;
}

body {
    background-color: #FDFCF0;
}


/* header */

.header-nav-wrapper {
    background: url(${contextPath}/resources/img/bg_header.gif) repeat-x 0 0;
    background-position: center;
    background-size: contain;
    height: 120px;
    padding-top: 4px;
}

.header-nav-container {
    position: fixed;
}
.header-nav-wrapper{
	width: 100%;
	position:fixed;
	top:0;
	z-index: 999;
}

.header {
    display: flex;
    justify-content: space-between;
    padding-left: 40px;
    padding-right: 150px;
}

.header-inner {
    display: flex;
   
}

.header-inner>div{
	border-right: 1px solid #DDDDDD;
}
.header-inner>div>a>button, .header-inner>div>button {
    margin-left: 8px;
    padding-right: 4px;
    font-size: 15px;
}


/* //header */


/* nav */

.nav-line {
    background-color: red;
    border-radius: 50px;
    height: 5px;
    /* background-image: linear-gradient(to right, white 33%, rgba(255, 255, 255, 0) 0%);
background-position: bottom;
background-size: 15px 1px;
background-repeat: repeat-x; */
}

.nav-wrapper {
    /* background: url(../images/bg_header.gif) repeat-x 0 0; */
    /* width: 100%;*/
    height: 94px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.nav-content {
    padding-top: 15px;
}

.movieLogo-wrapper {
    text-align: center;
   
}

.cgvLogo {
    width: 120px;
    margin-left: 150px;
    /* margin-right: -40px; */
}

.cgvMovie {
    width: auto;
    height: 28px;
}

.nav-inner {
    display: flex;
    /* margin-left: -250px; */
    margin-left: 150px;
    margin-right: auto;
    align-items: center;
    padding-bottom: 15px;
}

.nav-inner>div>button {
    padding-top: 5px;
    font-size: 14px;
    font-weight: bold;
    margin-left: 15px;

}

.search-wrapper {
    margin-left: 70px;
    height: 20px;
}

.search-wrapper>input {
    width: 100px;
    height: 20px;
}

.searchButton {
    margin: 0 !important;
    padding: 2px !important;
    background-color: red;
    color: white;
    width: 30px;
    height: 100%;
    font-size: 10px !important;
}

::-webkit-scrollbar {
    width: 10px;
    height: 12px;
    /* height: 8px; */
    border: 3px solid #ffffff;
}

::-webkit-scrollbar-track {
    background: #efefef;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
}

::-webkit-scrollbar-thumb {
    width: 50px;
    height: 20px;
    background: #444444;
    -webkit-border-radius: 8px;
    border-radius: 8px;
    -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .1)

}

* {
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}

html {
    height: 100%;
}

body {
    margin: 0;
    height: 100%;
}

html,
body {
    width: 100%;
    height: 100%;
    -webkit-text-size-adjust: none;
}



a {
    text-decoration: none;
    cursor: pointer;
    color: #161616;
    font-size:15px;
}

del {
    color: #9a9a9a;
}

.b {
    background: none;
    border: none;
    cursor: pointer;
}


  
 </style>
</head>

<body>
<div class="wrap">
</div>
    <div class="header-nav-wrapper">
      
            <div class="header-inner">   
                <c:choose>
                    <c:when test="${loginUser != null }">
                	<div><button class="b">${loginUser}님 환영합니다</button></div>
                	<div><a href="${contextPath }/myInfo/myInfoMain"><button class="b">마이페이지</button></a></div>
                	<div><a href="${contextPath }/member/logout"><button class="b">로그아웃</button></a></div>
                </c:when>
                <c:otherwise>
                	<div><a href="${contextPath }/member/login"><button class="b">로그인</button></a></div>
                	<div><a href="${contextPath}/member/register_form"><button class="b">회원가입</button></a></div>
                </c:otherwise>
               </c:choose>
            </div>
     
        <nav class="nav-wrapper">
            <div class="logo-wrapper"><a href="main"><img class="cgvLogo" src="${contextPath}/resources/img/cgv.png"></a></div>
            <div class="nav-content">
                <div class="movieLogo-wrapper"><img class="cgvMovie" src="${contextPath}/resources/img/h2_movie.png"></div>
                <div class="nav-inner">
                    <div><button class="b"><a href="${contextPath }/info">영화</a></button></div>
                    <div><button class="b"><a href="${contextPath}/bookMain">예매</a></button></div>
                    <div><button class="b"><a href="${contextPath }/theaterMain">극장</a></button></div>
                    <div><button class="b"><a href="${contextPath}/qnaboard/main">고객센터</a></button></div>
                    <div><button class="b"><a href="${contextPath }/main/communityMain">커뮤니티</a></button></div>
                </div>
            </div>
            <div></div>
            <div></div>
        </nav>


    </div>
    
</body>
</html>