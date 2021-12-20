<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script type="text/javascript">
function checkModify(result){
	if(result === "modify success"){
		alert("수정 되었습니다.")
	}
	modify.submit()
}
	
</script>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:import url="../default/header.jsp" />
<div style="width:300px; margin: 0 auto;">
<form id="modify" action="${contextPath}/service/qnaContentView?num=${personalData.num}" method="post" >
   <input type="hidden" name="writeNo" value="${personalData.num}">
   제목   <input type="text" size="30" name="title" value="${personalData.title}"><hr>
   내용   <textarea rows="5" cols="30" name="content">${personalData.content}</textarea>
   <hr>
   <hr>
   <input type="submit" onclick ="checkModify()" value="수정하기">
   <input type="button" onclick="history.back()" value="이전으로 돌아가기">
</form>
</div>
<c:import url="../default/footer.jsp" />
</body>
</html>





