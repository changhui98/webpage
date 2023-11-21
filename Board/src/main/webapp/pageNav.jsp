<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<%
	int startNo = 1;
	int endNo = 10;

%>


<!-- 페이지 네이션 -->
<nav aria-label="...">
  <ul class="pagination justify-content-center">
  <!-- 앞으로 가기 버튼 시작 / disabled : 비활성화 -->
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
  <!-- 앞으로 가기 버튼 종료 -->
    <% 
	for(int i = startNo; i <= endNo; i++){    
	%>
    <li class="page-item"><a class="page-link" href="#"><%=i %></a></li>
    
    
    
    <%} %>
    <!-- 뒤로가기 버튼 시작 -->
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
    <!-- 뒤로가기 버튼 종료 -->
  </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>