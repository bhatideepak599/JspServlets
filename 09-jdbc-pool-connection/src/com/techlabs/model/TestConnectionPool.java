package com.techlabs.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;



@WebServlet("/TestConnectionPool")
public class TestConnectionPool extends HttpServlet {

	@Resource(name = "jdbc/employee")
	private DataSource datasource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "select * from table1";
		try (Connection conn = datasource.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			while(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println("--------------");
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

}