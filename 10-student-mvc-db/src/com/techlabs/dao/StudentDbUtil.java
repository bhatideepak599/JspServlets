package com.techlabs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.techlabs.entity1.Student;

public class StudentDbUtil {
	private DataSource dataSource;

	public StudentDbUtil(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	public List<Student> getStudents() {
		List<Student> students = new ArrayList<Student>();
		try {

			Connection conn = dataSource.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "select * from table1";

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				double salary = rs.getDouble(3);
				String dept = rs.getString(4);

				Student st = new Student(id, name, salary, dept);
				students.add(st);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return students;

	}

	public boolean addStudent(Student student) throws SQLException {
		Connection conn = dataSource.getConnection();
		String sql = "insert into table1 (name,salary,department) values(?,?,?)";
		PreparedStatement prepstmt = conn.prepareStatement(sql);
		prepstmt.setString(1, student.getName());
		prepstmt.setDouble(2, student.getSalary());
		prepstmt.setString(3, student.getDept());

		int res = prepstmt.executeUpdate();
		return res == 1 ? true : false;

	}

	public boolean updateStudent(Student student) throws SQLException {
		Connection conn = dataSource.getConnection();
		String sql = "update table1 set name=?,salary=?,department=? where id=?";
		PreparedStatement prepstmt = conn.prepareStatement(sql);
		prepstmt.setString(1, student.getName());
		prepstmt.setDouble(2, student.getSalary());
		prepstmt.setString(3, student.getDept());
		prepstmt.setInt(4, student.getId());

		int res = prepstmt.executeUpdate();
		return res == 1 ? true : false;

	}

	public boolean deleteStudent(int id) throws SQLException {
		Connection conn = dataSource.getConnection();
		String sql = "delete from  table1  where id=?";
		PreparedStatement prepstmt = conn.prepareStatement(sql);
		prepstmt.setInt(1, id);
		int res = prepstmt.executeUpdate();
		return res == 1 ? true : false;

	}

	public Student getStudent(int id) throws SQLException {
		Connection conn = dataSource.getConnection();
		String sql = "select * from table1 where id=?";
		PreparedStatement prepstmt = conn.prepareStatement(sql);
		prepstmt.setInt(1, id);
		ResultSet res = prepstmt.executeQuery();

		while (res.next()) {
			Student st = new Student(id, res.getString(2), res.getDouble(3), res.getString(4));
			return st;
		}
		return null;
	}

	public List<Student> getStudent(String name) throws SQLException {
		List<Student> lst = new ArrayList<Student>();
		Connection conn = dataSource.getConnection();
		String sql = "select * from table1 where name=?";
		PreparedStatement prepstmt = conn.prepareStatement(sql);
		prepstmt.setString(1, name);
		ResultSet res = prepstmt.executeQuery();

		while (res.next()) {
			Student st = new Student(res.getInt(1), res.getString(2), res.getDouble(3), res.getString(4));
			lst.add(st);
		}
		return lst;
	}

}