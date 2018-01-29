package com.daengdaeng.allergydao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.allergydto.AllergyDto;



public class AllergyDao {
	
	public ArrayList<AllergyDto> allergylist() {
		ArrayList<AllergyDto> dtos = new ArrayList<AllergyDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		

			
				
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
							"daengdaeng", "oracle_11g");
				
					
				String query = "SELECT alId, cid, dname, alredate, alreason, alreaction, alseverity, almemo, alDate "
						+ "FROM allergy ORDER BY alDate ASC";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int alId = resultSet.getInt("alId");
					String cid = resultSet.getString("cid");
					String dname = resultSet.getString("dname");
					String alredate = resultSet.getString("alredate");
					String alreason = resultSet.getString("alreason");
					String alreaction = resultSet.getString("alreaction");
					String alseverity = resultSet.getString("alseverity");
					String almemo = resultSet.getString("almemo");
								
					Timestamp alDate = resultSet.getTimestamp("alDate");
								
					AllergyDto dto = new AllergyDto(alId, cid, dname, alredate, alreason, alreaction, alseverity, almemo, alDate);
					
					dtos.add(dto);
					
				}
					
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement !=null)  preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return dtos;
	} // allergylist()
	
	public void allergywrite(String alid, String dname, String alredate, String alreason, String alreaction, String alseverity, String almemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO allergy (alId, cid, dname, alredate, alreason, alreaction, alseverity, almemo) "
					+ "VALUES (medicine_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, alid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, alredate);
			preparedStatement.setString(4, alreason);
			preparedStatement.setString(5, alreaction);
			preparedStatement.setString(6, alseverity);
			preparedStatement.setString(7, almemo);
			int rn = preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	} // allegywrite()
	
	public void allergydelete(String alId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM allergy WHERE alId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(alId) );
			int rn = preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
	} // allegydelete(
	//mmlist->aallergylist
	public ArrayList<AllergyDto> aallergylist() {
		ArrayList<AllergyDto> dtos = new ArrayList<AllergyDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
				
			String query = "SELECT alId, cid, dname, alredate, alreason, alreaction, alseverity, almemo, alDate "
					+ "FROM allergy ORDER BY alDate ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int alId = resultSet.getInt("alId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String alredate = resultSet.getString("alredate");
				String alreason = resultSet.getString("alreason");
				String alreaction = resultSet.getString("alreaction");
				String alseverity = resultSet.getString("alseverity");
				String almemo = resultSet.getString("almemo");
							
				Timestamp alDate = resultSet.getTimestamp("alDate");
							
				AllergyDto dto = new AllergyDto(alId, cid, dname, alredate, alreason, alreaction, alseverity, almemo, alDate);
				
				dtos.add(dto);
				
			}
				
		
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement !=null)  preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return dtos;
	} // AAllergylist()
	
}













