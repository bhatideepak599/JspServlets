package com.techlabs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.techlabs.dao.StudentDbUtil;
import com.techlabs.entity1.Student;

@WebServlet("/Student")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentDbUtil studentDbUtil;

	@Resource(name = "jdbc/employee")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		super.init();
		studentDbUtil = new StudentDbUtil(dataSource);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String command;
		command = request.getParameter("command");

		if (command == null) {
			command = "list";
		}
		switch (command) {
		case "add":
			try {
				addStudent(request, response);
			} catch (SQLException | ServletException | IOException e) {

				e.printStackTrace();
			}
			break;

		case "load":
			try {

				loadStudent(request, response);
			} catch (SQLException | ServletException | IOException e) {

				e.printStackTrace();
			}
			break;

		case "update":
			try {
				updateStudent(request, response);
			} catch (SQLException | IOException e1) {

				e1.printStackTrace();
			}
			break;

		case "delete":
			try {
				deleteStudent(request, response);
			} catch (SQLException | ServletException | IOException e) {

				e.printStackTrace();
			}
			break;

		case "searchbyname":
			try {
				searchByname(request, response);
			} catch (SQLException e) {

				e.printStackTrace();
			}

			break;
		case "searchbyid":
			try {
				searchByid(request, response);
			} catch (SQLException e) {

				e.printStackTrace();
			}
		default:
			listStudents(request, response);
		}

	}

	private void searchByid(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Student st = studentDbUtil.getStudent(id);
		List<Student> studentlist = new ArrayList<Student>();
		studentlist.add(st);
		request.setAttribute("theStudentList", studentlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/empFile.jsp");
		requestDispatcher.forward(request, response);
		response.sendRedirect(request.getContextPath() + "/Student");

	}

	private void searchByname(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		String name = request.getParameter("name");

		List<Student> studentlist = studentDbUtil.getStudent(name);

		request.setAttribute("theStudentList", studentlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/empFile.jsp");
		requestDispatcher.forward(request, response);
		response.sendRedirect(request.getContextPath() + "/Student");

	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("Id"));
		String name = request.getParameter("name");
		String dept = request.getParameter("dept");
		double salary = Double.parseDouble(request.getParameter("salary"));

		Student st = new Student(id, name, salary, dept);

		boolean isUpdated = studentDbUtil.updateStudent(st);
		response.sendRedirect(request.getContextPath() + "/Student");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	private void listStudents(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Student> studentlist = studentDbUtil.getStudents();
		request.setAttribute("theStudentList", studentlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/empFile.jsp");
		requestDispatcher.forward(request, response);
	}

	private void addStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		String name = request.getParameter("name");
		String dept = request.getParameter("dept");
		double salary = Double.parseDouble(request.getParameter("salary"));

		Student student = new Student(name, salary, dept);

		boolean isAdded = studentDbUtil.addStudent(student);
		response.sendRedirect(request.getContextPath() + "/Student");

	}

	private void loadStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("Id"));

		Student student = studentDbUtil.getStudent(id);
		request.setAttribute("theStudent", student);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/update-Employee.jsp");
		requestDispatcher.forward(request, response);

	}

	private void deleteStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		System.out.println("Deleted");
		int id = Integer.parseInt(request.getParameter("Id"));
		boolean isDeleted = studentDbUtil.deleteStudent(id);
		response.sendRedirect(request.getContextPath() + "/Student");

	}

}
