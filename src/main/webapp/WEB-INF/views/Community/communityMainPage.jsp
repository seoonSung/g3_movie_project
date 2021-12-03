<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>커뮤니티 게시판 메인 페이지</title>      
</head>
<body>

           
<c:import url="../default/header.jsp"/>
<div class="container" style="padding-left: 30%;">
             <h3>게시판 리스트</h3> 
             <table border="1" class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <tr>
                           <th style="background-color: #eeeeee; text-align: center;">번호</th>

                           <th style="background-color: #eeeeee; text-align: center;">제목</th>

                           <th style="background-color: #eeeeee; text-align: center;">이름</th>

                           <th style="background-color: #eeeeee; text-align: center;">날짜</th>
                           
                           <th style="background-color: #eeeeee; text-align: center;">답글</th>

                           <th style="background-color: #eeeeee; text-align: center;">조회수</th>
                    </tr>
					<c:if test="${boardList.size() == 0 }">
				<tr>
					<td colspan="6">저장 데이터 없음</td>
				</tr>
				</c:if>
				
				<c:forEach var="dto" items="${boardList }">
				<tr class="altRow">
				   <c:if test="${dto.indent ==0 }">
				   		<td style="background-color: #eeeeee; text-align: center;">${dto.num }</td>
					<td style="background-color: #eeeeee; text-align: left;">
			<a href="${contextPath }/root/main/communityPost?num=${dto.num}">${dto.title }</a>
					</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.id}</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.times }</td>
					<td style="background-color: #eeeeee; text-align: center;">
			<a href="${contextPath }/root/main/communityReply?num=${dto.num}">답글</a>
					</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.hit }</td>
				   </c:if>
				   
				   <!-- 답변글의 경우 -->
				   <c:if test="${dto.indent > 0 }">
				   		<td style="background-color: #eeeeee; text-align: center;">${dto.num }</td>
					<td style="background-color: #eeeeee; text-align: left;">
			<a href="${contextPath }/root/main/communityPost?num=${dto.num}">
			<span style="color: red; font-style: italic; padding-left: ${dto.indent * 7}px;">┗ Re&nbsp;</span>
			${dto.title }</a>
					</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.id}</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.times }</td>
					<td style="background-color: #eeeeee; text-align: center;">
			<a href="${contextPath }/root/main/communityReply?num=${dto.num}">답글</a>
					</td>
					<td style="background-color: #eeeeee; text-align: center;">${dto.hit }</td>
				   </c:if>
				</tr>
				
			</c:forEach>
                   <tr>
				<td style="background-color: #eeeeee; text-align: center;">
					<div align="left">
						<c:forEach var="pageNum" begin="1" end="${repeat }">
							<a href="communityMain?pageNum=${pageNum }">[${pageNum }]</a>
						</c:forEach>
					</div>
					<a href="communityWrite">글쓰기</a>
				</td>
			</tr>
             </table>
</div>
<c:import url="../default/footer.jsp"/>
       </body>

</html>