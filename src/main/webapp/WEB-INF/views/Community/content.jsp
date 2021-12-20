<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




</head>
<body onload="replyList()">
<c:import url="../default/header.jsp"/>
<div class="wrap">

 <div id="container">
    <h1 style="text-align:center;">상세보기</h1>
   
    <form method="post" action="${contextPath}/qnaboard/modify" >
      <fieldset>
        
        <ul id="shipping">
        <input type="hidden" name="num" value="${personalData.num }">     
        <li>
           <label for="user-name">문의내용</label>
            <input type="text" name="sort" value="${personalData.sort}" >   <!-- 수정하기 -->
        </li>     
          <li>
            <label for="user-name">제목 </label>
            <input type="text" name="title" value="${personalData.title}" readonly>
          </li>
          <li>
            <label for="addr">작성자</label>
            <input type="text" name="id" value="${loginUser}" readonly>
          </li> 
          <li>
            <label for="user">작성일자</label>
            <input type="text" name="days" value="${personalData.days}" readonly>
          </li>      
          <li>
            <label for="memo">내용</label>
            <textarea id="memo" name="content" cols="40" rows="20" readonly>${personalData.content}</textarea>
          </li>   
        </ul>  
      </fieldset>
      <div>
        <input type="submit"  value="수정하기"> 
        <input type="button"  value="삭제하기" onclick="location.href='${contextPath}/qnaboard/delete?num=${personalData.num}'">
        <input type="button" value="목록보기" onclick="location.href='${contextPath}/qnaboard/boardList'" > 
        
      </div>        
    </form>
    <div id="response">
       <span id="response1">
       
      
      
      <input style="margin-top: 20px;" type="button" value="답글달기" class="over" id="open" onclick="showDetail() ">
   
      <div id="desc" class="detail">
      <form id="frm">
         <table id="table1">
            <tr>
               <td>답글작성하는 곳(관리자만 가능하도록 하기)</td>
            </tr>
            <tr>
               <td>제목 <input type="text" id="title" name="title"></td>
               
            </tr>
            <tr>
               <input type="hidden" name="id" value="${loginUser}">
               <input type="hidden" name="write_group" value="${personalData.num}">
                
            </tr>
            <tr>
               <td>내용</td>
            </tr>
            <tr>
               <td><textarea id="content" name="content" rows="10" cols="60"></textarea></td>
            </tr>
            <tr>
               <td>
               <button type="button" onclick="rep()">저장</button>
               <button type="button" onclick="">취소</button>               
               </td>
            </tr>
         </table>
         </form>
      </div>
      
      <div id="replyList"></div>

   <script>
    function showDetail() {
       if(document.querySelector('#open').value === '답글달기'){
            document.querySelector('#desc').style.display = 'block';   
          document.querySelector('#open').value = '접기';
       }else{
            document.querySelector('#desc').style.display ='none';
          document.querySelector('#open').value = '답글달기';
          
       }
    }

  </script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>   
<script type="text/javascript">
function rep(){
   let form = {};
   let arr = $("#frm").serializeArray()
   
   for (i = 0; i < arr.length; i++) {
         form[arr[i].name] = arr[i].value;}
   $.ajax({
      url : "master",
      type : "POST",
      dataType : "json",
      data : JSON.stringify(form),
      contentType : "application/json;charset=utf-8",
      success : function(list) {
         alert("성공적으로 답글이 달렸습니다.");
         $("#title").val("")
         $("#content").val("")
      },
      error : function() {
         alert("문제 발생!")
      }
   });
}

function replyList(){
    
    
    $.ajax({
       url:"getReplyList/"+${personalData.num}, type:"GET",
       dataType:"json",
       success: function(result){
          
          let htmls = ""
          
          result.forEach(function(data){
             
             htmls += '<h1>'+data.content+'</h1>'

             

          })
          $("#replyList").html(htmls)   
          
       },error:function(){
          alert('데이터를 가져올 수 없습니다')
       }
    })
 }
</script>

 
    </div>
  </div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>