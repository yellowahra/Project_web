package com.daengdaeng.adao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.adto.AdoptDto;



public class AdoptDao {
	
	public ArrayList<AdoptDto> alist() {
		ArrayList<AdoptDto> dtos = new ArrayList<AdoptDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "SELECT aId, cid, abreed, aage, agender, alocation, filename, aDate, aHit, aGroup, aStep, aIndent "
					+ "FROM adopt ORDER BY aGroup DESC, aStep ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int aId = resultSet.getInt("aId");
				String cid = resultSet.getString("cid");
				String abreed = resultSet.getString("abreed");
				String aage = resultSet.getString("aage");
				String agender = resultSet.getString("agender");
				String alocation = resultSet.getString("alocation");
				String filename = resultSet.getString("filename");
				Timestamp aDate = resultSet.getTimestamp("aDate");
				int aHit = resultSet.getInt("aHit");
				int aGroup = resultSet.getInt("aGroup");
				int aStep = resultSet.getInt("aStep");
				int aIndent = resultSet.getInt("aIndent");
				
				AdoptDto dto = new AdoptDto(aId, cid, abreed, aage, agender, alocation, filename,
						aDate, aHit, aGroup, aStep, aIndent);
				
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
	
	public void awrite(String cid, String abreed, String aage, String agender, String alocation, String filename) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO adopt (aId, cid, abreed, aage, agender, alocation, filename, "
					+ "aHit, aGroup, aStep, aIndent) "
					+ "VALUES (adopt_seq.nextval, ?, ?, ?, ?, ?, ?, 0, adopt_seq.currval, 0, 0)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, abreed);
			preparedStatement.setString(3, aage);
			preparedStatement.setString(4, agender);
			preparedStatement.setString(5, alocation);	
			preparedStatement.setString(6, filename);	
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
	

	private void aupHit(String aId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "UPDATE adopt SET aHit = aHit +1 WHERE aId = ?";
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, aId);
			
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
	
	
	
	
	public void adelete(String aId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM adopt WHERE aId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(aId) );
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













