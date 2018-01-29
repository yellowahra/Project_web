package com.daengdaeng.cdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.cdto.CalendarDto;
import com.daengdaeng.cdao.CalendarDao;



public class CalendarDao {
	
	public ArrayList<CalendarDto> calendarlist() {
		ArrayList<CalendarDto> dtos = new ArrayList<CalendarDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
			
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
							"daengdaeng", "oracle_11g");
				
					
				String query = "SELECT nId, cid, dname, ndate, ntime, ntype, nmemo "
						+ "FROM calendar ORDER BY writeDate ASC";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int nId = resultSet.getInt("nId");
					String cid = resultSet.getString("cid");
					String dname = resultSet.getString("dname");
					String ndate = resultSet.getString("ndate");
					String ntime = resultSet.getString("ntime");
					String ntype = resultSet.getString("ntype");
					String nmemo = resultSet.getString("nmemo");
								
					Timestamp writeDate = resultSet.getTimestamp("writeDate");
								
					CalendarDto dto = new CalendarDto(nId, cid, dname, ndate, ntime, ntype, nmemo, writeDate);
					
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
	
	public void calendarwrite(String cid, String dname, String ndate, String ntime, String ntype, String nmemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO calendar (nId, cid, dname, ndate, ntime, ntype, nmemo) "
					+ "VALUES (medicine_seq.nextval, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, ndate);
			preparedStatement.setString(4, ntime);
			preparedStatement.setString(5, ntype);
			preparedStatement.setString(6, nmemo);
		
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
	
	public void calendardelete(String nId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM calendar WHERE nId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(nId) );
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
	//wlist->mmlist
	public ArrayList<CalendarDto> ccalendarlist() {
			ArrayList<CalendarDto> dtos = new ArrayList<CalendarDto>(); 
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			

				
					
				try {
					
					Class.forName("oracle.jdbc.driver.OracleDriver");
					connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
								"daengdaeng", "oracle_11g");
					
						
					String query = "SELECT nId, cid, dname, ndate, ntime, ntype, nmemo "
							+ "FROM calendar ORDER BY writeDate ASC";
					
					preparedStatement = connection.prepareStatement(query);
					resultSet = preparedStatement.executeQuery();
					
					while(resultSet.next()) {
						int nId = resultSet.getInt("nId");
						String cid = resultSet.getString("cid");
						String dname = resultSet.getString("dname");
						String ndate = resultSet.getString("ndate");
						String ntime = resultSet.getString("ntime");
						String ntype = resultSet.getString("ntype");
						String nmemo = resultSet.getString("nmemo");
									
						Timestamp writeDate = resultSet.getTimestamp("writeDate");
									
						CalendarDto dto = new CalendarDto(nId, cid, dname, ndate, ntime, ntype, nmemo, writeDate);
						
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
	} // mmlist()
	
}













