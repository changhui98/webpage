package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.dao.MemberDao;
import com.web.dto.MemberDto;



@WebServlet("/WebLogin")
public class WebLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String error= "1";
		
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.login(id, pw);
		
		HttpSession session =request.getSession();
		
		if(dto != null ) {
			session.setAttribute("id", dto.getId());
			session.setAttribute("name", dto.getName());
			session.setAttribute("regidate", dto.getRegidate());
			session.setAttribute("dto", dto);
			
			response.sendRedirect("/BList");
			
		}else {
			request.setAttribute("error", error);
			request.getRequestDispatcher("/login.jsp")
			.forward(request, response);
		}
		
		
	}

}
