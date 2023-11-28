<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
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
	
	#aside>h2 {
		text-align: center;
		font-size: 1.5em;
		background-color:lightblue;
		border-radius: 20px;
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
		height: 400px;
		display: inline;
		border: 1px solid lightblue;
		border-radius: 20px;
		float:left;
		
	}
	
	 .menuBtn{
		width:100%;
	}
	
	#bookBtn,#fileBtn,#backBtn {
		margin-top:10px;
		width: 100%;
	}
	
	#aside>div>button {
		width: 49%;
	}
	

</style>

<body>

<script>
	window.onload = function(){
		
		let logout = document.querySelector("#logoutBtn")
		logout.onclick = function(){
			alert('로그아웃 합니다.')
			location.href='/Logout'
			logout.method='get'
			logout.submit()
		}
		
		let book = document.querySelector("#bookBtn")
		book.onclick = function(){
			alert('도서 페이지로 이동합니다.')
			location.href='/BookList'
			book.submit()
		}
		
		let file = document.querySelector("#fileBtn")
		file.onclick =function(){
			alert('파일 관리 페이지로 이돟합니다.')
		}
		
		let main = document.querySelector("#backBtn")
		main.onclick =function(){
			alert('메인 페이지로 이동합니다.')
			location.href='/BList'
		}
	}
</script>


<div id="header">
	<h2>Book Page</h2>
	
</div>

<div id="main">
	<div id="container">
		<table class="table">
			<tr class="table-info">
				<th>*</th>
				<th>제목</th>
				<th>대여정보</th>
				<th>작가</th>
			</tr>
			
			<c:forEach items="${book }" var="book">
			<tr>
				<td>${book.no }</td>
				<td>${book.title }</td>
				<td>${book.rentyn }</td>
				<td>${book.author }</td>
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
			<button type="button" class="btn btn-outline-info"
			id="logoutBtn">LOGOUT</button>
			<button type="button" class="btn btn-outline-info">MyPage</button>
		</div>
		
		<h2>MENU</h2>
		<div>
			<div>
				<button type="button" class="btn btn-outline-info" id="bookBtn">Book List</button>
			</div>
			<div>
				<button type="button" class="btn btn-outline-info" id="fileBtn">File List</button>
			</div>
			<div>
				<button type="button" class="btn btn-outline-info" id="backBtn">Main Page</button>
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