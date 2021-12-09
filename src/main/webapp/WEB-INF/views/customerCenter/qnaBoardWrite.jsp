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
</style>
<script type="text/javascript">
function show(){
	var qu = document.getElementsByName('question')[1];
	var idx = question.selectedIndex;
	var foodText = question.options[idx].textContent;
	document.write(foodText);
}

</script>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">

 <div id="container">
    <h1>글작성</h1>
   
    <form method="post" action="${contextPath}/qnaboard/writeSave" >
    
       <fieldset>
        <legend>글작성 페이지</legend>
        <ul id="shipping">
        
           <li>
            <label for="d-day">문의 내용</label>
             <select  >
		      <option value="">-- 선택 --</option>
		      <option value="1">회원가입 문의</option>
		      <option value="2">예매 문의</option>
		      <option value="3">예매 취소 문의</option>
		      <option value="4">기타 문의</option>
		    </select>
		    <small>(문의 내용을 선택 후 작성)</small>
          </li>     
          <li>
            <label for="user-name">제목 </label>
            <input type="text" name="title" value="">
          </li>
          <li>
            <label for="addr">작성자</label>
            <input type="text" name="id">
          </li>       
          <li>
            <label for="memo">내용</label>
            <textarea id="memo" name="content" cols="40" rows="20" placeholder="내용을 입력하세요."></textarea>
          </li>   
        </ul>  
      </fieldset>
      <div>
        <input type="submit" value="저장하기"> 
        <input type="reset" value="취소하기">
      </div>        
    </form>
  </div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>