package com.JSPCrud;

import static com.JSPCrud.Provider.*;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider  {

	private static Connection con=null;
	
	static {
		try {
			Class.forName(Driver);
			con=DriverManager.getConnection(url,name, password);
		}
		catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		
		
	}
	public static Connection getCon(){
		return con;
	}
	
}
