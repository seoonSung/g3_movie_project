<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

             <title></title>

             <meta name="generator" content="editplus" />

             <meta name="author" content="김종현" />

             <style type="text/css">

                    /*디자인은 큰틀부터 디자인하자.*/

                    #list {

                           width:500px;

                           border:1px solid orange;

                    /*겉테두리와 안테두리를 하나로 합쳐준다. */

                           border-collapse:collapse;

                    }

                   

                    /* 누구 자식인지 반드시 명시해 준다.*/

                    #list td, #list th{

                           font-size:12px;

                           border:1px solid orange;

                           padding:3px;

                    }

 

                    #list th{

                           background-color:#cc99cc;

                    }

 

                    #list .td1 {

                           width:3px;

                           text-align:center;

                    }

 

                    #list .td2 {

                           width:150px;

                           text-align:center;

                    }

 

                    #list .td3 {

                           width:50px;

                           text-align:center;

                    }

 

                    #list .td4 {

                           width:50px;

                           text-align:center;

                    }

 

                    #list .td5 {

                           width:5px;

                           text-align:center;

                    }

                   

                    /*부모 자식 관계 */

                    #list .altRow{

                           background-color:#e0f0b5;

                    }

             </style>

       </head>

 

       <body>

             <!-- Ex21_board.htm -->
<c:import url="../default/header.jsp"/>
<div align="center">
             <h3>게시판 리스트</h3> 
             <table id="list">
                    <tr>
                           <th>번호</th>

                           <th>제목</th>

                           <th>이름</th>

                           <th>날짜</th>

                           <th>조회수</th>
                    </tr>
					<c:if test="${boardList.size() == 0 }">
				<tr>
					<td colspan="5">저장 데이터 없음</td>
				</tr>
				</c:if>
				
				<c:forEach var="dto" items="${boardList }">
				<tr class="altRow">
				
					<td class="td1">${dto.num }</td>
					<td class="td2">
			<a href="${contextPath }/root/main/communityPost?num=${dto.num}">${dto.title }</a>
					</td>
					<td class="td3">${dto.id}</td>
					<td class="td4">${dto.times }</td>
					<td class="td5">${dto.hit }</td>
					
				</tr>
			</c:forEach>
                   <tr>
				<td colspan="5">
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