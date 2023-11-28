package com.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dao.BookDao;
import com.web.dto.BookDto;

@WebServlet("/BookList")
public class BookListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookDao dao = new BookDao();
		List<BookDto> dto = dao.getList();
		
		request.setAttribute("book", dto);
		
		dao.close();
		
		request.getRequestDispatcher("/booklist.jsp")
			.forward(request, response);
	}


}
