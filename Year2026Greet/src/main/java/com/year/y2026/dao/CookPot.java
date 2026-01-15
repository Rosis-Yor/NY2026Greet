package com.year.y2026.dao;
import com.year.y2026.model.YearMonthMode;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class CookPot {
	
	
	public YearMonthMode cookDish(String month, String mode) {
		
		YearMonthMode yMM = new YearMonthMode(month, mode);
		
		
		try {
			
			String url = "jdbc:mysql://localhost:3306/year2026";
			String username = "root"; // Replace with your MySQL username
			String password = "root"; // Replace with your MySQL password
			
			// Load MySQL JDBC Driver - this String is working either
			// Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
						

			// Establish connection
			Connection connection = DriverManager.getConnection(url, username, password);
			System.out.println("Connected to the database!");

			// Execute a query
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT month, " + mode + " FROM monthmode WHERE monthmode.month='" + month + "'" );

			// Process the result set
			if (resultSet.next()) {
			yMM.setMonth((String)resultSet.getString("month"));
			yMM.setMode(mode);
			yMM.setMonthMode(resultSet.getString(mode));
			
			}

			// Close resources
			resultSet.close();
			statement.close();
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
		return yMM;
	} 	
		
	} 
	
	










