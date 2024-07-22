package com.techlabs.model;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public static List<Student> getStudents(){
		List<Student> students=new ArrayList<Student>();
		students.add(new Student(1, "Deepak", "Bhati", "abc@123"));
		students.add(new Student(2, "Rahul", "Kumar", "xyz@123"));
		students.add(new Student(3, "Sunny", "Sunny", "fow@123"));
		students.add(new Student(4, "Monu", "Bhati", "bca@123"));
		
		
		return students;
	}
}
