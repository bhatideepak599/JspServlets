package com.techlabs.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Student> students=StudentDataUtil.getStudents();
		
		request.setAttribute("theStudentList", students);
		
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Servlet2");
		
		requestDispatcher.forward(request, response);
	}

}
