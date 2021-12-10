<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<%@ include file="/WEB-INF/views/Community/set.jsp"%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<title>board</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(document).on('click', '#btnList', function(){ //목록으로 이동

		location.href = "${pageContext.request.contextPath}/main/communityMain";

	});
	
	$(document).on('click', '#btnUpdate', function(){ //수정으로 이동

		var url = "${pageContext.request.contextPath}/main/communityModifyForm";

		url = url + "?num="+${communityPost.num};

		location.href = url;

	});
	
	$(document).on('click', '#btnDelete', function(){ //삭제버튼

	    var url = "${pageContext.request.contextPath}/main/delete";

	    url = url + "?num=" + ${communityPost.num};

			location.href = url;

		});
	//    댓글    /////////////////////////////////////////////////////////////////////////
	//댓글 보기
	function replyList(){
		
		$.ajax({
			url:"getReplyList/"+${communityPost.num}, type:"GET",
			dataType:"json",
			success: function(result){
				console.log(result)
				let htmls = ""
				
				result.forEach(function(data){
					
					htmls += '<div class="media text-muted pt-3" id="renum' + data.renum + '">';

                   

                    htmls += '<p>';

                    htmls += '<span class="d-block">';

                    htmls += '<strong class="text-gray-dark">' + data.id + '</strong>';

                    htmls += '<span style="padding-left: 7px; font-size: 9pt">';

                    htmls += '<a href="javascript:void(0)" onclick="reUpdate(' + data.renum + ', \'' + data.id + '\', \'' + data.content + '\' )" style="padding-right:5px">수정</a>';

                    htmls += '<a href="javascript:void(0)" onclick="reDelete(' + data.renum + ')" style="padding-right:5px">삭제</a>';

                    htmls += '<a href="javascript:void(0)" onclick="rere(' + data.renum + ',' + data.num + ', \'' + data.groups + '\', \'' + data.id + '\')" style="padding-right:5px">답글</a>';
                    																									// 아이디 부분 나중에 로그인한 값으로 바꿀것						
                    htmls += '</span>';

                    htmls += '</span>';

                    htmls += data.content;

                    htmls += '</p>';
                    
                    htmls += '</div>';

                    htmls += '<div class="media text-muted pt-3" id="rerenum' + data.renum + '">';

				    htmls += '</div>';

				})
				$("#replyList").html(htmls)	
				
			},error:function(){
				alert('데이터를 가져올 수 없습니다')
			}
		})
	}
	
	//댓글 쓰기
	function reSave(){
		let form={}; 
	    let arr = $("#frm").serializeArray()
	    for(i=0;i<arr.length;i++){ 
	        form[arr[i].name] = arr[i].value; }
		
		$.ajax({
			url : "reSave", type : "POST",
			// data : 서버(컨트롤러)로 보내는 데이터
			data : JSON.stringify(form),
			dataType : "json", // 서버(컨트롤러)로 부터 돌아오는(return값) 값
			// contentType : 서버(컨트롤러)로 보내는 타입의 형태
			contentType : "application/json;charset=utf-8",
			success : function(result){
				alert("성공적으로 답글이 달렸습니다.");
				replyList();
				$("#id").val("")
			    $("#content").val("")
			}, error : function(){
				alert("문제 발생")
			}
		})
		
	}
	//댓글 삭제

	function reDelete(renum){
		
		console.log(renum)
		$.ajax({
			url:"reDelete/"+renum, type:"GET",
			dataType:"json",
			success : function(result){
				alert("댓글이 삭제되었습니다");
				replyList();

			}, error : function(){
				alert("문제 발생")
			}
		})
	}

	//댓글 수정
	//댓글 수정 창
	function reUpdate(renum, id, content){

		var htmls = "";

		htmls += '<div class="media text-muted pt-3" id="renum' + renum + '">';

		htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';

		htmls += '<span class="d-block">';

		htmls += '<strong class="text-gray-dark">' + id + '</strong>';

		htmls += '<span style="padding-left: 7px; font-size: 9pt">';

		htmls += '<a href="javascript:void(0)" onclick="updateReply(' + renum + ')" style="padding-right:5px">저장</a>';

		htmls += '<a href="javascript:void(0)" onClick="replyList()">취소<a>';

		htmls += '</span>';

		htmls += '</span>';
		
		htmls += '<textarea name="content1" id="content1" class="form-control" rows="3">';

		htmls += content;

		htmls += '</textarea>';

		htmls += '</p>';

		htmls += '</div>';
		
		

		
		//htmls += '<div class="media text-muted pt-3" id="renum' + renum + '">';
		// 댓글 리스트 보여주는 것과 같은 아이디 ex) id=renum3 을 수정폼으로 대체
		$('#renum' + renum).replaceWith(htmls);

		$('#renum' + renum + ' #content1').focus();


	}
	//수정 저장
	function updateReply(renum){

		let replyEditContent = $('#content1').val();
		let paramData = {"content": replyEditContent
						, "renum": renum
		};
		console.log(paramData)
		$.ajax({
			url:"updateReply",
		    type:"POST",
		    dataType:"json", 
		    data:JSON.stringify(paramData),
		    contentType:"application/json;charset=utf-8",
			success: function(result){
				alert("댓글이 수정되었습니다.");
				replyList();
			}
			, error: function(error){
				alert("문제 발생");
			}

		});

	}
	//대댓글 폼
	function rere(renum,num,groups,id){

		var htmls = "";

		htmls += '<div class="media text-muted pt-3" id="rerenum' + renum + '">';

		htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';

		htmls += '<span class="d-block">';

		htmls += '<strong class="text-gray-dark">' + id + '</strong>';

		htmls += '<span style="padding-left: 7px; font-size: 9pt">';
		

		htmls += '<a href="javascript:void(0)" onclick="rereSave(' + renum + ', \'' + id + '\',' + groups + ',' + num + ')" style="padding-right:5px">저장</a>';

		htmls += '<a href="javascript:void(0)" onClick="replyList()">취소<a>';

		htmls += '</span>';

		htmls += '</span>';
		
		htmls += '<textarea name="content2" id="content2" class="form-control" rows="3">';

		htmls += '</textarea>';

		htmls += '</p>';

		htmls += '</div>';
		
		$('#rerenum' + renum).replaceWith(htmls);
		
		$('#rerenum' + renum + ' #content2').focus();
	}
	
//onclick="rereSave(' + renum + ')"
	//대댓글 작성 저장
	function rereSave(renum,id,groups,num){
		let replyEditContent = $('#content2').val();
		let paramData = {"content": replyEditContent
						, "renum": renum
						, "id" : id
						, "groups" : groups
						, "num" : num
		};
		console.log(paramData)
		$.ajax({
			url:"rereSave",
		    type:"POST",
		    dataType:"json", 
		    data:JSON.stringify(paramData),
		    contentType:"application/json;charset=utf-8",
			success: function(result){
				alert("대댓글 작성 완료");
				replyList();
			}
			, error: function(error){
				alert("문제 발생");
			}

		});
	}
</script>
   <script>
    function showDetail() {
      document.getElementById("desc").style.display="block"; 
      document.getElementById("open").style.display="none"; 
      document.getElementById("close").style.display="block"; 
      
    }

    function hideDetail() {
    document.getElementById("desc").style.display="none"; 
    document.getElementById("close").style.display="none"; 
    document.getElementById("open").style.display="block"; 
    }
  </script>


</head>

<body onload="replyList()"> 
<c:import url="../default/header.jsp"/>
	<article>

		<div class="container" role="main">

			<div class="bg-white rounded shadow-sm">

				<div class="board_title"><c:out value="${communityPost.title}"/></div>
				<!-- 각 class="이름" <- resources/common/css/common.css 파일에 설정해둠 -->
				<div class="board_info_box">

					<span class="board_author"><c:out value="작성자: ${communityPost.id}"/></span>
					<span class="board_author"><c:out value="작성일: ${communityPost.times}"/></span>
					<span class="board_author"><c:out value="조회수: ${communityPost.hit}"/></span>
				</div>

				<div class="board_content">
				<textarea class="form-control" rows="5" readonly="readonly">${communityPost.content}</textarea>
				</div>

				

			

			

			<div style="margin-top : 20px">

				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

				
			</div>
			</div>
			<div style="margin-top : 20px">
			<button type="button" class="btn btn-sm btn-primary" id="open"
					onclick="showDetail()">댓글</button>
				<button type="button"  class="btn btn-sm btn-primary" id="close"
					style="display:none"
					onclick="hideDetail()">접기</button>
			</div>
			<!-- 댓글 -->
			
			<div style="padding-top: 10px">
				
				<form id="frm" >

				
					<div id="desc" style="display:none" class="my-3 p-3 bg-white rounded shadow-sm">
					<div class="row" >

						<div class="col-sm-10">
							<input type="hidden" name="num" value="${communityPost.num}">
							<textarea id="content" name="content" class="form-control"
								rows="3" placeholder="댓글을 입력해 주세요"></textarea>

						</div>

						<div class="col-sm-2">

							<input  class="form-control" id="id" name="id"
								placeholder="댓글 작성자"></input>

							<button type="button" class="btn btn-sm btn-primary"
								onclick="reSave()" style="width: 100%; margin-top: 10px">
								저 장</button>

						</div>

					</div>
						<div style="padding-top: 10px">

							<h6 >댓글</h6>

							 <div id="replyList"></div> 

						</div>

					</div>

				</form>
			</div>


			<!-- 댓글 보기 {s}-->

			

			


		</div>

		

	</article>
<c:import url="../default/footer.jsp"/>
</body>

</html>
