package com.bank.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.bank.model.UserLogin;

public class UserDbUtil {
	private DataSource dataSource;
	
	public UserDbUtil(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	public boolean verifyAdmin(UserLogin user) {
	    try {
	      Connection con = dataSource.getConnection();
	      String sql = "select * from admin where user_name = ? and password = ?;";
	      PreparedStatement stmt = con.prepareStatement(sql);
	      
	      
	      stmt.setString(1,user.getUser_name());
	      stmt.setString(2, user.getPassword());
	      
	      ResultSet res = stmt.executeQuery();
	      while(res.next()) {
	        if(res != null) {
	          return true;
	        }
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return false;
	  }
	public UserLogin verifyCustomer(UserLogin user) {
	    try {
	      Connection con = dataSource.getConnection();
	      String sql = "select * from customers where email = ? and password = ?;";
	      PreparedStatement stmt = con.prepareStatement(sql);
	      
	      
	      stmt.setString(1,user.getUser_name());
	      stmt.setString(2, user.getPassword());
	      
	      ResultSet res = stmt.executeQuery();
	      while(res.next()) {
	        String user_name = res.getString("email");
	        String password = res.getString("password");
	        String first_name = res.getString("firstName");
	        UserLogin theUser = new UserLogin();
	        theUser.setName(first_name);
	        theUser.setPassword(password);
	        theUser.setUser_name(user_name);
	        if(theUser != null) {
	          return theUser;
	        }
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return null;
	  }
	
	
}
