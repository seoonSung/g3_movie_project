<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* { margin: 0; }
.wrap { width: 1000px; margin: auto; }
.header { width: 1000px; background-color: white; }
.navdiv{width:100%; background-color: rgb(0, 0, 0);  }
nav{ background-color: rgb(0, 0, 0);width: 1000px; height: 50px;}
nav ul { list-style: none; display: flex; justify-content: flex-end; }
nav ul li { margin: 0 3px; padding: 15px 15px; }
nav ul li a { text-decoration: none; color: white; font-weight: 500;}
nav ul li a:hover {
    color: rgb(255, 255, 255); padding-bottom: 8px; /* a�그 밑줄�글간격*/
    border-bottom: 1px solid rgb(255, 255, 255); transition: all 0.25s;
}
.title1 {    /*�른, �래, 번짐*/
    width: 350px;
    float: left;
    margin-top: 50px;   
}
#nav2 ul{
    width:400px;
    float: right;
       
}

#icon{
    width: 40px;
    height: 40px;
    background-color:rgb(255, 255, 255);   
}
</style> </head> <body>
<div class="wrap">
    <div class="header"> <h1 class="title1">CARE LAB</h1> </div>
</div>
<div class="navdiv">
<div class="wrap">
<nav id="nav1">
    <ul>
<li><a href="${contextPath }/info">�화</a></li>
<li><a href="${contextPath }/bookMain">�매</a></li>
<li><a href="${contextPath }/theaterMain">극장</a></li>
<li><a href="${contextPath}/qnaboard/main">고객�터</a></li>
</ul>
</nav>
<nav id="nav2">
<ul>
<li><a href="#">�토/a></li>
<li><a href="${contextPath }/main/communityMain">커�티</a></li>
<li>
	<c:choose>
		<c:when test="${loginUser != null }">
			<a href="${contextPath }/member/logout">로그�웃</a>
		</c:when>
		<c:otherwise>
			<a href="${contextPath }/member/login">로그/a>
		</c:otherwise>
	</c:choose>
</li>
</ul>
</nav>
</div>
</div>

</body> 
</html>
