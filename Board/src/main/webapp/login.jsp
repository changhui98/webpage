<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style type="text/css">
	#header, #main{
		width: 60%;
		margin: 0 auto;
	
	}

	.headertext {
		text-align: center;
	}
	
	button {
		width:100%;
		margin:0 auto;
		padding:1em;
	}
	
	
</style>

</head>
<body>

<script type="text/javascript">
	window.onload =function(){
 		
		listForm.addEventListener('click',function(){
			
			let list = document.querySelector("#headerBtn")
			list.onclick=function(){
				alert('메인 페이지로 이동합니다.')
				location.href='/main.jsp'
			}
			
		})
		
	}

</script>

<div id="header">
	<h2 class="headertext">LOGIN PAGE</h2>
	<p class="headertext">기존 회원 아닌 경우, 회원가입부터 진행해주세요</p>
	<div id="headerform">
		<form name="listForm">
			<button type="button" id="headerBtn" class="btn btn-outline-info">MAIN PAGE</button>
		</form>
	</div>

</div>

<br>
<br>

<div id="main">
	<form action="/WebLogin" method="post">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">아이디</span>
		  <input type="text" class="form-control" name="id"
		  placeholder="Username" aria-label="Username" 
		  aria-describedby="basic-addon1">
		</div>

		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">비밀번호</span>
		  <input type="text" class="form-control" 
		  placeholder="Userpass" aria-label="Username" name="pw"
		  aria-describedby="basic-addon1">
		</div>
		<br>
	<c:if test="${error ne null }">
	<hr>
		아이디 , 비밀번호를 확인해주세요.
	<hr>
	</c:if>
		<div>
			<button class="btn btn-outline-info" id="loginBtn">LOGIN</button>
		</div>			
	</form>
	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>