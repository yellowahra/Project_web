package com.daengdaeng.vdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.vdto.VaccineDto;



public class VaccineDao {
	
	public ArrayList<VaccineDto> vlist() {
		ArrayList<VaccineDto> dtos = new ArrayList<VaccineDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		

			
				
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
							"daengdaeng", "oracle_11g");
				
					
				String query = "SELECT vId, cid, dname, vname, vinjdate, vseff, vmemo, vDate "
						+ "FROM vaccine ORDER BY vDate ASC";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int vId = resultSet.getInt("vId");
					String cid = resultSet.getString("cid");
					String dname = resultSet.getString("dname");
					String vname = resultSet.getString("vname");
					String vinjdate = resultSet.getString("vinjdate");
					String vseff = resultSet.getString("vseff");
					String vmemo = resultSet.getString("vmemo");
					
								
					Timestamp vDate = resultSet.getTimestamp("vDate");
								
					VaccineDto dto = new VaccineDto(vId, cid, dname, vname, vinjdate, vseff, vmemo, vDate);
					
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
	} // vlist()
	
	public void vwrite(String cid, String dname, String vname, String vinjdate, String vseff, String vmemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO vaccine (vId, cid, dname, vname, vinjdate, vseff, vmemo) "
					+ "VALUES (vaccine_seq.nextval, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, vname);
			preparedStatement.setString(4, vinjdate);
			preparedStatement.setString(5, vseff);
			preparedStatement.setString(6, vmemo);
		
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
		
	} // vwrite()
	
	public void vdelete(String vId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM vaccine WHERE vId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(vId) );
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
	//mmlist->vvlist
	public ArrayList<VaccineDto> vvlist() {
		ArrayList<VaccineDto> dtos = new ArrayList<VaccineDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
				
			String query = "SELECT vId, cid, dname, vname, vinjdate, vseff, vmemo, vDate "
					+ "FROM vaccine ORDER BY vDate ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int vId = resultSet.getInt("vId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String vname = resultSet.getString("vname");
				String vinjdate = resultSet.getString("vinjdate");
				String vseff = resultSet.getString("vseff");
				String vmemo = resultSet.getString("vmemo");
				
							
				Timestamp vDate = resultSet.getTimestamp("vDate");
							
				VaccineDto dto = new VaccineDto(vId, cid, dname, vname, vinjdate, vseff, vmemo, vDate);
				
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
	} // vvlist()
	
}













