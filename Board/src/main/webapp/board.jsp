<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<style>
	#header {
		width:60%;
		margin: 0 auto;
	}
	
	#header>h2 {
		text-align: center;
		border: 1px solid lightblue;
		border-radius: 20px;
		padding: 1.15em
	}

	#main {
		width:100%
	}

	#container {
		width:60%;
		margin-left:15%;
		display: inline;
		float:left;

	}
	
	#aside,#asideFooter{
		width:19%;
		margin-left:10px;
		margin-bottom:20px;
		height: 350px;
		display: inline;
		border: 1px solid lightblue;
		border-radius: 20px;
		float:left;
		
	}
	
	

</style>

<body>
<script>
	window.onload = function(){
		let logout = document.querySelector("#logoutBtn")
		logout.onclick = function(){
			alert('로그아웃 합니다.')
		}
		
	}
</script>


<div id="header">
	<h2>My Page </h2>
	
</div>

<div id="main">
	<div id="container">
		<table class="table">
			<tr class="table-info">
				<th>*</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			
			<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.num }</td>
				<td><a href="/WebView?num=${dto.num }">${dto.title }</a></td>
				<td>${dto.content }</td>
				<td>${dto.id }</td>
				<td>${dto.postdate }</td>
				<td>${dto.visitcount }</td>
			</tr>
			</c:forEach>
			
		</table>
	</div>
	
	<div id="aside">
		<h2>로그인정보</h2>
		<div>
			<ul>
				<li>아이디 : ${id }</li>
				<li>이름 : ${name }</li>
				<li>가입날짜 : ${regidate }</li>
			</ul>
			<hr>
		</div>
		
		<div>
		<h2>MENU</h2>
			<div>
			<button type="button" class="btn btn-outline-info"
			id="logoutBtn">LOGOUT</button>
			</div>
		</div>
	</div>
	
	<div id="asideFooter">
		이미지 첨부
	
	
	
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>