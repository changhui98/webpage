package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dao.BoardDao;
import com.web.dto.BoardDto;

@WebServlet("/WebView")
public class WebViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		
		
		BoardDao dao = new BoardDao();
		BoardDto dto = dao.getOne(num);
		
		dao.visitUp(num);

		request.setAttribute("list", dto);
		
		dao.close();
		
		request.getRequestDispatcher("/webview.jsp")
			.forward(request, response);
	}

}
