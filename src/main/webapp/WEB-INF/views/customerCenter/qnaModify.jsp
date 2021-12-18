<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {  /* 문서 전체에 적용하는 스타일 */
  box-sizing: border-box;  /* 박스 사이즈 */
  margin:0;  /* 마진 */
  padding:0;  /* 패딩 */
}
#container {
  width:480px;
  margin:40px auto;
}
h1 {
  font-size:2em;
  margin:10px;
}
fieldset {
  padding:15px;
}
fieldset legend {  
  font-weight:bold;  
}
ul {
  list-style:none;
  padding-left:0;
}
li {
  margin:10px;
}
#product input[type="number"] {
  width:30px;
  margin-left:10px;
}
#shipping li label {
 width:80px;
 float:left;
 text-align:left;     
}
input[type="text"], input[type="tel"], input[type="email"] {
  width:300px;
}

/* '주문하기', '취소하기' 버튼 */
form > div {
  margin-top:20px;
  display:flex;
  justify-content: space-around;
}
form > div > input[type="submit"], input[type="reset"] {
  text-align:center;
  width:150px;
  height:40px;      
  background-color:#fafafa;
  border:1px solid #ccc;
  box-shadow: 1px 1px 1px #ccc;
}

	
#test1{
margin: auto;
width: 300px;
}
#item {
position: absolute;
width:500px;
height:auto;
padding:15px 20px;
margin:auto;
}
button {
background-color:rgba(255,255,255,0.7);;
padding:5px;
border:1px solid #ccc;
font-size:0.8em;			
}
.over {
left:30px;
bottom:30px;
}
.detail {
width:400px;
text-align:left;			
line-height:1.8;
display:none;
}
	
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">

 <div id="container">
    <h1 style="text-align:center;">수정 페이지</h1>
   <label style="font-size:small; color:red;" >* 작성자는 변경할 수 없습니다.</label>
    <form method="post" action="${contextPath}/qnaboard/modify_save" >
      <fieldset>
        
        <ul id="shipping">
        <input type="hidden" name="num" value="${personalData.num }"> 
        <li>
        	<label for="user-name">문의내용</label>
            <input type="text" name="sort" value="${personalData.sort}" >   <!-- 수정하기 -->
        </li>     
          <li>
            <label for="user-name">제목 </label>
            <input type="text" name="title" value="${personalData.title}" >
          </li>
          <li>
          
            <label for="addr">작성자</label>
            <input type="text" name="id" value="${personalData.id}" readonly>
          </li>    
          <li>
            <label for="memo">내용</label>
            <textarea id="memo" name="content" cols="40" rows="20">${personalData.content}</textarea>
          </li>   
        </ul>  
      </fieldset>
      <div>
        <input type="submit" value="저장하기"> 
        <input type="reset" value="취소">
      </div>        
    </form>
    <div id="response">
   
    </div>
  </div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>