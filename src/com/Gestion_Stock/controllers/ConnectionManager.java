package com.Gestion_Stock.controllers;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	
	 private static Connection cnx=null;
	public static Connection getConnection() {
		if(cnx!=null) return cnx;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx=DriverManager.getConnection("jdbc:mysql://localhost/stock","root","");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cnx;
	}
	

}
