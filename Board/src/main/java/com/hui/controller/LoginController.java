package com.hui.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hui.dao.MemberDao;
import com.hui.dto.MemberDto;

@WebServlet("/LoginAction")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id =request.getParameter("floatingInput");
		String pw =request.getParameter("floatingPassword");
		
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.login(id, pw);
		
		HttpSession session = request.getSession();
		
		dao.close();
		
		if(dto != null) {
			session.setAttribute("id", dto.getId());
			session.setAttribute("dto", dto);
			response.sendRedirect("/BoardList");
		}else {
			session.setAttribute("rejoin", "아이디 및 비밀번호 확인해주세요.");
			request.getRequestDispatcher("/LoginForm.jsp")
				.forward(request, response);
		}
	}

}
