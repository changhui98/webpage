<%@page import="com.hui.dto.BoardDto"%>
<%@page import="java.util.List"%>
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
	List<BoardDto> list = 
		(List<BoardDto>)request.getAttribute("list");

%>


<h3>BOARD PAGE <span class="badge rounded-pill text-bg-dark">현재 ID : ${sessionScope.id }</span></h3>

<table class="table table-hover">
  <thead>
    <tr class="table-dark">
      <th scope="col">#</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
<%for (BoardDto dto : list){ %>
  <tbody>
    <tr>
      <th><%=dto.getNum() %></th>
      <td><a href="/BoardView?num=<%=dto.getNum()%>"><%=dto.getTitle() %></a> </td>
      <td><%=dto.getContent() %> </td>
      <td><%=dto.getId() %> </td>
      <td><%=dto.getPostdate() %> </td>
      <td><%=dto.getVisitcount() %> </td>
    </tr>
<%} %>

    
  </tbody>
  
</table>
<%@include file="pageNav.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>