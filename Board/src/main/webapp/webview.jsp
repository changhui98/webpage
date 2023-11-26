<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
<script>
	window.onload =function(){
		viewForm.addEventListener('click',function(){
			let list = document.querySelector("#listBtn")
			list.onclick=function(){
				location.href='/BList'
			}
		})
		
	}

</script>


<c:set var="dto" value="${list }"></c:set>

<div>
	<h2>상세페이지</h2>
	<div>
		<form name="viewForm">
			<button type="button" id="listBtn">리스트</button>
			<button type="button">수정</button>
			<button type="button">삭제</button>
		</form>
	</div>
</div>
<hr>
<div>
	<ul>
		<li>번호 : ${dto.num }</li>
		<li>제목 : ${dto.title }</li>
		<li>내용 : ${dto.content }</li>
		<li>작성자 : ${dto.id }</li>
		<li>작성일 : ${dto.postdate }</li>
		<li>조회수 : ${dto.visitcount }</li>	
	</ul>
</div>
<hr>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>