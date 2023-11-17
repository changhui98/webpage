package com.hui.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hui.dao.BoardDao;
import com.hui.dto.BoardDto;

@WebServlet("/BoardList")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	BoardDao dao = new BoardDao();
	List<BoardDto> dto = dao.getList();
	
	request.setAttribute("list", dto);
	
	request.getRequestDispatcher("/board.jsp")
		.forward(request, response);
	
	}


}
