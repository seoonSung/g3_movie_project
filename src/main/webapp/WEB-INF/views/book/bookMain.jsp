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
    
     function movieList(){ //í™” ë¦¬ìŠ¤ë¶ˆëŸ¬¤ê¸°

 		$.ajax({
 			url:"movieList", type:"GET",
 			dataType:"json",
 			success: function(result){
 				
 				let htmls = ""
 				htmls += '<div class="reserve-date">'
 				result.forEach(function(data){
 					
 			
 					htmls += '<button class="button" onclick="movieDay(\'' + data.title + '\',\'' + data.movie_number + '\' )">'+data.title+'</button>'
					
 					
 					})
 					htmls += '</div>'
 				$('#movieList').html(htmls)	
 				
 			},error:function(){
 				alert('°ì´°ë ê°€¸ì˜¬ †ìŠµˆë‹¤')
 			}
 		})
 	}
     
     function movieDay(t,m){ //í™”  ì§œ ë¶ˆëŸ¬¤ê¸°
		var title = t;
     	var theater = m;
  		$.ajax({
  			url:"movieDay/"+title, type:"GET",
  			dataType:"json",
  			success: function(result){
  				
  				let htmls = ""
  				htmls += '<div class="reserve-date">'
  				result.forEach(function(data){
  				var day = data.day
  				
  				for(var i = 27; i<32; i++){
  					
  					if(day.includes(i)){
  					htmls += '<button class="button" onclick="startTime(\''+i+'\',\'' + title + '\',\'' + theater + '\')">'+i+'/button>'
  				}
  					
  				}
 
  					})
  					htmls += '</div>'
  				$('#movieDay').html(htmls)	
  				
  			},error:function(){
  				alert('°ì´°ë ê°€¸ì˜¬ †ìŠµˆë‹¤')
  			}
  		})
  	}
     
     function startTime(i,title,theater){ //í™”  ì§œ ë¶ˆëŸ¬¤ê¸°
				var mo ="¤ì „"
				var ev = "¤í›„"
   				let htmls = ""
   				htmls += '<div class="reserve-date">'
  
   				htmls += '<button class="button" onclick="book(\''+i+'\',\'' + title + '\',\'' + mo + '\',\'' + theater + '\')">¤ì „</button>'
   				htmls += '<button class="button" onclick="book(\''+i+'\',\'' + title + '\',\'' + ev + '\',\'' + theater + '\')">¤í›„</button>'

   				htmls += '</div>'
   				$('#startTime').html(htmls)	

     }
     
     function book(i,title,time,theater){ //ˆë§¤ë²„íŠ¼

			let htmls = ""
			htmls += '<div style="position: absolute; right: 480px; bottom: 40px;">'
    		htmls += '<button class="button" onclick="seat(\''+i+'\',\'' + title + '\',\'' + time + '\',\'' + theater + '\')">ˆë§¤˜ê¸°</button>'
			htmls += '</div>'
			
			$('#book').html(htmls)	

	}
     
     function seat(i,title,time,theater){ //ˆë§¤ë²„íŠ¼

    	 var url = "${pageContext.request.contextPath}/seat";
 		
    	 url = url + "?i=" + i;

 		 url = url + "&title=" + title;
 		
 		 url = url + "&time="+time;
 		 
 		 url = url + "&theater="+theater;
    	 
 		location.href = url;

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

    </style>
   
</head>

<body onload="movieList()">
    <c:import url="../default/header.jsp"/>
    
    <div class="reserve-container">
        <div class="movie-part">
            <div class="reserve-title">í™”</div>       
			<div id="movieList">
	
			</div>
		</div>
        
        <div class="day-part">
            <div class="reserve-title"> ì§œ</div>
            <div id="movieDay"></div>
            
        </div>
        
        <div class="time-part">
            <div class="reserve-title">œê°„</div>
            <div id="startTime"></div>
        </div>
        <div id="book"></div>
		
		
    </div>
    
   
    <c:import url="../default/footer.jsp"/>
    
</body>

</html>