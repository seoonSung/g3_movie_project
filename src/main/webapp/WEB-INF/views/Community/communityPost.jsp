<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import url="../default/header.jsp" />
   <table border="1" align="center">
      <caption>
         <font size="5"><b>개인 정보</b></font>
      </caption>
      <tr>
         <th width="100">글 번호</th>
         <td width="200">${personalDate.num}</td>
         <th width="100">작성자</th>
         <td width="200">${personalDate.id}</td>
      </tr>
      <tr>
         <th>제목</th>
         <td>${personalDate.title}</td>
         <th>등록일자</th>
         <td>${personalDate.times}</td>
      </tr>
      <tr>
         <th>내용</th>
         <td>${personalDate.content}</td>
         
      </tr>
      <tr>
         <td colspan="4" align="center">
               <input type="button" value="수정하기"
                  onclick="location.href='${contextPath}/main/communityModifyForm?num=${personalDate.num}'">
               <input type="button" value="삭제하기"
                  onclick="location.href='${contextPath}/main/delete?num=${personalDate.num}'">
             <input type="button" onclick="slideClick()" value="댓글달기"> 
            <button type="button" onclick="location.href='${contextPath}/main/communityMain'">메인으로 돌아가기</button>
            <hr>
            <div id="reply"></div></td>
      </tr>
   </table>
   <c:import url="../default/footer.jsp" />

</body>
</html>