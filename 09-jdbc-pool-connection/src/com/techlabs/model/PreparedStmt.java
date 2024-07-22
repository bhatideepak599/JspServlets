package com.techlabs.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

@WebServlet("/PreparedStmt")

public class PreparedStmt extends HttpServlet {
	@Resource(name = "jdbc/employee")
	private DataSource datasource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sql = "Select * from table1 where id> ? and name = ?";
		String sql1 = "insert into table1 values(?,?,?,?)";

		try (Connection conn = datasource.getConnection(); PreparedStatement myStmt = conn.prepareStatement(sql);) {

			myStmt.setInt(1, 11111);
			myStmt.setString(2, "Shanu");
//			myStmt.setDouble(3, 100000);
//
//			myStmt.setString(4, "IT");

			 ResultSet rs = myStmt.executeQuery();
//			int res = myStmt.executeUpdate();
//
//			System.out.println(res + " rows affected");
			
			 while (rs.next()) { String Name = rs.getString(2); int id = rs.getInt(1);
			 System.out.println(Name + "     " + id); }
			 

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
