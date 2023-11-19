package com.hui.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hui.dao.BoardDao;
import com.hui.dto.BoardDto;

@WebServlet("/BoardView")
public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		
		BoardDao dao = new BoardDao();
		BoardDto dto = dao.getOne(num);
	
		request.setAttribute("dto", dto);
		dao.visitUp(num);
		
		dao.close();
		request.getRequestDispatcher("/listview.jsp")
			.forward(request, response);
		
	}

}
