<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결제가 완료되었습니다.
<%=request.getParameter("theater") %>관 <%=request.getParameter("title") %> <br> <%=request.getParameter("time") %>시간대 <%=request.getParameter("payMoney") %>원
<br>
<a href="main">메인으로</a> 
</body>
</html>