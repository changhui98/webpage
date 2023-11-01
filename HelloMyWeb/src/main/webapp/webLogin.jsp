<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>로그인중 </h2>
<%
	String id = request.getParameter("userId");
	String pwd = request.getParameter("userPwd");
	
	if(request.getParameter("userId") != null){
		id=request.getParameter("userId");
	}
	
	if(request.getParameter("userPwd") != null){
		pwd = request.getParameter("userPwd");
	}

	if(id.equals("hui") && pwd.equals("1234")){
		response.sendRedirect("webLoginOk.jsp");
	}else{
		request.getRequestDispatcher("web.html?loginErr=1")
		.forward(request, response);
	}
	

%>
</body>
</html>