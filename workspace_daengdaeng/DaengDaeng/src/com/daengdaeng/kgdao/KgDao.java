package com.daengdaeng.kgdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.kgdto.KgDto;



public class KgDao {
	
	public ArrayList<KgDto> slist() {
		ArrayList<KgDto> dtos = new ArrayList<KgDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
				
			String query = "SELECT sId, cid, dname, dweight, sDate "
					+ "FROM weight ORDER BY sDate ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int sId = resultSet.getInt("sId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String dweight = resultSet.getString("dweight");
				Timestamp sDate = resultSet.getTimestamp("sDate");
							
				KgDto dto = new KgDto(sId, cid, dname, dweight, sDate);
				
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
	
	public void swrite(String cid, String dname, String dweight) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO weight (sId, cid, dname, dweight) "
					+ "VALUES (weight_seq.nextval, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, dweight);
		
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
	
	public void sdelete(String sId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM weight WHERE sId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(sId) );
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













