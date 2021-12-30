<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ include file="/WEB-INF/views/Community/set.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <script type="text/javascript">
    
     function movieList(){ //영화 리스트 불러오기

       $.ajax({
          url:"movieList", type:"GET",
          dataType:"json",
          success: function(result){
             
             let htmls = ""
             htmls += '<div class="reserve-date">'
             result.forEach(function(data){
                
          
                htmls += '<button class="button" onclick="movieDay(\'' + data.title + '\',' + data.movie_number + ' )">'+data.title+'</button>'
               
                
                })
                htmls += '</div>'
             $('#movieList').html(htmls)   
             
          },error:function(){
             alert('데이터를 가져올 수 없습니다')
          }
       })
    }
     
     function movieDay(t,m){ //영화 날짜 불러오기
      var title = t;
        var theater = m;
        $.ajax({
           url:"movieDay/"+title, type:"GET",
           dataType:"json",
           success: function(result){
              
              let htmls = ""
              htmls += '<div class="reserve-date">'
              result.forEach(function(data){
              let day = data.day
              
              for(let i = 27; i<32; i++){
                 
                 if(day.includes(i)){
                 htmls += '<button class="button" onclick="startTime(\''+i+'\',\'' + title + '\',' + theater + ')">'+i+'일</button>'
              }
                 
              }
 
                 })
                 htmls += '</div>'
              $('#movieDay').html(htmls)   
              
           },error:function(){
              alert('데이터를 가져올 수 없습니다')
           }
        })
     }
     
     function startTime(i,title,theater){ //영화 날짜 불러오기
            var mo ="오전"
            var ev = "오후"
               let htmls = ""
               htmls += '<div class="reserve-date">'
  
               htmls += '<button class="button" onclick="book(\''+i+'\',\'' + title + '\',\'' + mo + '\',' + theater + ')">오전</button>'
               htmls += '<button class="button" onclick="book(\''+i+'\',\'' + title + '\',\'' + ev + '\',' + theater + ')">오후</button>'

               htmls += '</div>'
               $('#startTime').html(htmls)   

     }
     
     function book(i,title,time,theater){ //예매버튼
        var writer = '${loginUser}';
         let htmls = ""
         htmls += '<div style="position: absolute; right: 480px; bottom: 40px;">'
         if(writer == ""){
                htmls += '<button class="button" onclick="login()">예매하기</button>'
         }else{
            htmls += '<button class="button" onclick="seat(\''+i+'\',\'' + title + '\',\'' + time + '\',' + theater + ',\''+writer+'\')">예매하기</button>'
   
         }
          htmls += '</div>'
         
         $('#book').html(htmls)   

   }
     
     function seat(i,title,time,theater,writer){ //예매버튼

        var url = "${pageContext.request.contextPath}/seat";
       
        url = url + "?i=" + i;

        url = url + "&title=" + title;
       
        url = url + "&time="+time;
        
        url = url + "&theater="+theater;

        url = url + "&writer="+writer;
        
       location.href = url;

   } 
    
     function login(){ //예매버튼 비로그인시
        
        alert('로그인 후 이용해주세요')

       location.href = "${pageContext.request.contextPath}/member/login";
       
   }    

          
     
    </script>
    
    <style>
  

body {
    background-color: #FFFFFF;
}

.button {

  background-color: white;

  border: 1px solid gray; 

  color: black;

  padding: 15px 30px;

  text-align: center;

  text-decoration: none;

  display: inline-block;

  font-size: 16px;

  margin: 4px 2px;

  cursor: pointer;

}

.button:hover {

  background: tomato; 

  color: white;

}

.button:focus {
    background-color: tomato;
    color: white;
}

/* content */

.reserve-container {
    margin-top: 20px;
    display: flex;
    justify-content: center;
    height: 600px;
    /* border: 1px solid #dddddd; */
}

.reserve-container>div {
    border: 1px solid #dddddd;
}

.reserve-title {
    border-bottom: 1px solid #dddddd;
    background-color: #444444;
    text-align: center;
    color: #dddddd;
    padding: 5px;
    font-size: 13px;
    font-weight: bold;
}

.movie-part {
    width: 284px;
}

.day-part {
    width: 264px;
}

.time-part {
    width: 384px;
}

.sort-wrapper {
    margin: 10px 6px 6px 10px;
    /* padding: 3px; */
    display: flex;
    border-bottom: 1px solid #dddddd;
    font-size: 12px;
}

.sort-wrapper>div {
    padding: 3px;
}

.sort-wrapper>div:hover {
    border-bottom: 1px solid #111111;
}

.sort-selected {
    font-weight: bold;
    border-bottom: 1px solid #111111;
}

.reserve-date {
    padding-top: 5px;
    display: flex;
    flex-direction: column;
    align-items: left;
    height: 770px;
    overflow-x: hidden;
}
#m{
margin-top: 50px;
}

    </style>
   
</head>

<body onload="movieList()">
    <c:import url="../default/header.jsp"/>
    <div id="m">
    <div class="reserve-container">
        <div class="movie-part">
            <div class="reserve-title">영화</div>       
         <div id="movieList">
   
         </div>
      </div>
        
        <div class="day-part">
            <div class="reserve-title">날짜</div>
            <div id="movieDay"></div>
            
        </div>
        
        <div class="time-part">
            <div class="reserve-title">시간</div>
            <div id="startTime"></div>
        </div>
        <div id="book"></div>
      
      
    </div>
    
   </div>
    <c:import url="../default/footer.jsp"/>
    
</body>

</html>