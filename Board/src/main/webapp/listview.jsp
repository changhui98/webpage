<%@page import="com.hui.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style>
	#header{
		width: 720px;
		margin: 0 auto;
		margin-top:10%;
		border: 1px solid black;
		border-radius: 10px;
		padding:10px;
		background-color:lightblue;
	}

	#main {
		width: 720px;
		margin: 0 auto;
		border:1px solid black;
		border-radius: 10px;
		padding:20px;
	}
	
	#footer{
		width: 720px;
		margin: 0 auto;
		border:1px solid black;
		border-radius: 10px;
		padding:10px;
	}

</style>

</head>
<body>
<script>
	window.onload=function(){
		let list = document.querySelector('#listBtn');
			list.addEventListener('click',function(){
				location='/BoardList'
			})
		
	}


</script>
<%
	 BoardDto dto = (BoardDto)request.getAttribute("dto");

%>
<div id="header">
	<div>
		<h2>상세 페이지</h2>
	</div>
	<div>
		<h3>정보</h3>
	</div>
</div>

<div id="main">
	<p>제목 :<%=dto.getTitle() %>      </p>
	<p>내용 :<%=dto.getContent() %>    </p>
	<p>작성자 :<%=dto.getId() %>        </p>
	<p>작성일 :<%=dto.getPostdate() %>  </p>
	<p>조회수 :<%=dto.getVisitcount() %></p> 
</div>

<div id="footer">
	<button type="button" class="btn btn-dark" id="listBtn">리스트</button>
	
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>