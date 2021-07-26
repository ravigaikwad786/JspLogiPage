package com.JSPCrud;

import java.io.BufferedReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class StudentDao {
	public static int saveData(Student s) throws SQLException {
		int status=0;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into jspLogin (name,lastname,email,password,gender,hobby) value(?,?,?,?,?,?)");
			ps.setString(1,s.getName());
			ps.setString(2, s.getLastname());
			ps.setString(3,s.getEmail());
			ps.setString(4,s.getPassword());
			ps.setString(5,s.getGender());
			ps.setString(6, s.getHobby());
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return status;
	}
	public static boolean validate(Student s) throws SQLException{
		boolean status;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from jspLogin where email=? and password=?");
			ps.setString(1,s.getEmail());
			ps.setString(2,s.getPassword());
			ResultSet rs=ps.executeQuery();
			return status=rs.next();
			}
			
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		
		return false;
	}
	
	public static List<Student> getAllRecord(){
		List<Student> list=new ArrayList<Student>();
			try {
				Connection con=ConnectionProvider.getCon();
				PreparedStatement ps=con.prepareStatement("select * from jsplogin");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Student s= new Student();
					s.setId(rs.getInt("id"));
					s.setName(rs.getString("name"));
					s.setLastname(rs.getString("lastname"));
					s.setEmail(rs.getString(4));
					s.setPassword(rs.getString(5));
					s.setGender(rs.getString(6));
					s.setHobby(rs.getString(7));
					
					list.add(s);
					
				}
				
			}
			catch (Exception e) {
				 e.printStackTrace();
				// TODO: handle exception
			}
		return list;
	}
	

}
