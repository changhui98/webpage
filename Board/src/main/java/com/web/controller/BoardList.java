package com.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dao.BoardDao;
import com.web.dto.BoardDto;

@WebServlet("/BList")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * 보드 리스트 가져오기
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardDao dao = new BoardDao();
		List<BoardDto> dto = dao.getList();
		
		request.setAttribute("list", dto);

		dao.close();
		request.getRequestDispatcher("/board.jsp")
			.forward(request, response);
	}


}
