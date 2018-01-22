package com.daengdaeng.ldao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.ldto.LostDto;



public class LostDao {
	
	public ArrayList<LostDto> llist() {
		ArrayList<LostDto> dtos = new ArrayList<LostDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "SELECT lId, cid, lbreed, lage, lgender, llocation, lfilename, lcontact, lmemo, lDate, lHit "
					+ "FROM lost";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int lId = resultSet.getInt("lId");
				String cid = resultSet.getString("cid");
				String lbreed = resultSet.getString("lbreed");
				String lage = resultSet.getString("lage");
				String lgender = resultSet.getString("lgender");
				String llocation = resultSet.getString("llocation");
				String lfilename = resultSet.getString("lfilename");
				
				String lcontact = resultSet.getString("lcontact");
				String lmemo = resultSet.getString("lmemo");
				Timestamp lDate = resultSet.getTimestamp("lDate");
				int lHit = resultSet.getInt("lHit");
				
				LostDto dto = new LostDto(lId, cid, lbreed, lage, lgender, llocation, lfilename, lcontact, lmemo,
						lDate, lHit);
				
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
	} // list()
	
	public void lwrite(String cid, String lbreed, String lage, String lgender, String llocation, String lfilename, String lcontact, String lmemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO lost (lId, cid, lbreed, lage, lgender, llocation, lfilename, lcontact, lmemo,"
					+ "lHit) "
					+ "VALUES (lost_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, 0)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, lbreed);
			preparedStatement.setString(3, lage);
			preparedStatement.setString(4, lgender);
			preparedStatement.setString(5, llocation);	
			preparedStatement.setString(6, lfilename);
			preparedStatement.setString(7, lcontact);	
			preparedStatement.setString(8, lmemo);
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
		
	} // write()
	

	private void lupHit(String lId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "UPDATE lost SET lHit = lHit +1 WHERE lId = ?";
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, lId);
			
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
		
	} // upHit()

	public void ldelete(String lId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM lost WHERE lId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(lId) );
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
		
		
	} // adelete(

}













