<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>

<style type="text/css">
	#header {
		width: 60%;
		margin: auto;
	}
	
	h2 {
		text-align:center;
	}

</style>
<body>
<script type="text/javascript">

	window.onload=function(){
		mainForm.addEventListener('click', function(){
			
			let login = document.querySelector("#loginBtn")
			login.onclick=function(){
				alert('로그인 페이지로 이동합니다.')
				location.href ='/login.jsp'
			}
			
			let join = document.querySelector("#joinBtn")
			join.onclick=function(){
				alert('회원가입 페이지로 이동합니다.')
			}
			
		})
		
	}

</script>

<div id="header">
	<h2>MAIN PAGE</h2>
	<div>
		<figure class="text-center">
	 	 	<blockquote class="blockquote">
	    		<p>Welcome to My Homepage. board view go Login</p>
	  		</blockquote>
	  	</figure>
  	</div>
</div>

<form name="mainForm">
	<div class="d-grid gap-2 col-6 mx-auto">
		<button type="button" class="btn btn-outline-info" id="loginBtn">LOGIN</button>
		<button type="button" class="btn btn-outline-info" id="joinBtn">JOIN</button>
	</div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>