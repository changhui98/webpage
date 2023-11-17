<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style>
	main, header {
		width: 420px;
		margin:0 auto;
	}
	
	header {
		margin-top:15%;
	}

</style>
</head>

<body>

<header>
	<h2>LOGIN PAGE</h2>

</header>
<main>
	<form action="/LoginAction" method="post">
	
		<div class="form-floating mb-3">
		  <input type="text" class="form-control" 
		  name="floatingInput" 
		  placeholder="ID를 입력해주세요."
		  value="test">
		  <label for="floatingInput">User Id</label>
		</div>
		
		<div class="form-floating">
		  <input type="password" class="form-control" 
		  name="floatingPassword" 
		  placeholder="PW를 입력해주세요."
		  value="1234">
		  <label for="floatingPassword">Password</label>
		</div>
		
		<div class="form-floating">
			<input type="submit" class="btn btn-dark" value="LOGIN" id="loginBtn">
		</div>
		${sessionScope.rejoin }
	</form>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>