package com.techlabs.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.protocol.Resultset;

@WebServlet("/JDBCDemo")
public class JDBCDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Deepak@123");
		      Statement stmt=conn.createStatement();
		      
		      String insertQuery="insert into table1(id,name,salary,department) "
		    		  + "values(25581,'Deepak',50000,'IT')";
		      String updateQuery="update table1 set name='Bhati' where id=1";
		      String selectQuery="select * from table1";
		      
		      
//		      int res=stmt.executeUpdate(updateQuery);
		      ResultSet rs=stmt.executeQuery(selectQuery);
		      while(rs.next()) {
		    	  System.out.print("Id = "+ rs.getInt(1)+" ");
		    	  System.out.print(" , Name = "+rs.getString(2));
		    	  System.out.print(" , Salary ="+rs.getDouble(3));
		    	  System.out.println(" , Department = "+rs.getString(4));
		    	  
		    	  
		      }
		      
		      //System.out.println("Number of rows affected "+res);
		      
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

}