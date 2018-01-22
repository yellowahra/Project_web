package com.daengdaeng.wdao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.wdto.WatchDto;



public class WatchDao {
	
	public ArrayList<WatchDto> wlist() {
		ArrayList<WatchDto> dtos = new ArrayList<WatchDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "SELECT wId, cid, wbreed, wage, wgender, wlocation, wfilename, wcontact, wmemo, wDate, wHit "
					+ "FROM watch";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int wId = resultSet.getInt("wId");
				String cid = resultSet.getString("wid");
				String wbreed = resultSet.getString("wbreed");
				String wage = resultSet.getString("wage");
				String wgender = resultSet.getString("wgender");
				String wlocation = resultSet.getString("wlocation");
				String wfilename = resultSet.getString("wfilename");
				
				String wcontact = resultSet.getString("wcontact");
				String wmemo = resultSet.getString("wmemo");
				Timestamp wDate = resultSet.getTimestamp("wDate");
				int wHit = resultSet.getInt("wHit");
				
				WatchDto dto = new WatchDto(wId, cid, wbreed, wage, wgender, wlocation, wfilename, wcontact, wmemo,
						wDate, wHit);
				
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
	} // wlist()
	
	public void wwrite(String cid, String wbreed, String wage, String wgender, String wlocation, String wfilename, String wcontact, String wmemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO watch (wId, cid, wbreed, wage, wgender, wlocation, wfilename, wcontact, wmemo,"
					+ "wHit) "
					+ "VALUES (watch_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, 0)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, wbreed);
			preparedStatement.setString(3, wage);
			preparedStatement.setString(4, wgender);
			preparedStatement.setString(5, wlocation);	
			preparedStatement.setString(6, wfilename);
			preparedStatement.setString(7, wcontact);	
			preparedStatement.setString(8, wmemo);
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
	
	public void wdelete(String wId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM watch WHERE wId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(wId) );
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
		
		
	} // wdelete(

}
