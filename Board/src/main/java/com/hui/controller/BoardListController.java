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
import com.hui.dto.Criteria;

@WebServlet("/BoardList")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	Criteria cri = 
		new Criteria(request.getParameter("pageNo"),
				request.getParameter("amount"));
		
		
	BoardDao dao = new BoardDao();
	request.setAttribute("list",dao.getList(cri));
	
	request.setAttribute("cri", cri);
	
	request.setAttribute("totalCnt", dao.getTotalCnt());
	
	dao.close();
	
	
	request.getRequestDispatcher("/board.jsp")
		.forward(request, response);
	
	}


}
