<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
	#container {
		width:80%;
		background-color:aqua;
	}
	#div-left {
		width:400px;
		height: 400px;
		background-color:lightblue;
		border:1px solid black;
		display:inline;
	}
	#div-right{
		width: auto;
		display:inline;
		float:left;
	}
	
	#div-left-h2{
		width:100%;
		height: 100%;
		text-align: center;
	}


</style>

</head>
<body>

<div id="container">
	<div id="div-left">
		이건뭐지 ?
		<div id="div-left-h2">
			<h2>테스트용 박스</h2>
		</div>
	</div>

	<div id="div-right">
		<form class="row g-3">
		  <div class="col-md-6">
		    <label for="inputEmail4" class="form-label">아이디</label>
		    <input type="email" class="form-control" id="inputEmail4">
		  </div>
		  <div class="col-md-6">
		    <label for="inputPassword4" class="form-label">비밀번호</label>
		    <input type="password" class="form-control" id="inputPassword4">
		  </div>
		  <div class="col-12">
		    <label for="inputAddress" class="form-label">이름</label>
		    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
		  </div>
		  
		  
		  
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">Sign in</button>
		  </div>
		</form>
	</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>