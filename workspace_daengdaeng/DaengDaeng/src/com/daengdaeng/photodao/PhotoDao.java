package com.daengdaeng.photodao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.photodto.PhotoDto;




public class PhotoDao {
	
	public ArrayList<PhotoDto> photolist() {
		ArrayList<PhotoDto> dtos = new ArrayList<PhotoDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
	
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "SELECT pId, cid, dname, ptitle, pfile, takendate, pDate "
					+ "FROM photo ORDER BY pDate ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			
			while(resultSet.next()) {
				int pId = resultSet.getInt("pId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String ptitle = resultSet.getString("ptitle");
				String pfile = resultSet.getString("pfile");
				String takendate = resultSet.getString("takendate");
				Timestamp pDate = resultSet.getTimestamp("pDate");
				PhotoDto dto = new PhotoDto(pId, cid, dname, ptitle, pfile, takendate, pDate);
				
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
	} // photolist()
	
	public void photowrite(String cid, String dname, String ptitle, String pfile, String takendate) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO photo (pId, cid, dname, ptitle, pfile, takendate) "
					+ "VALUES (photo_seq.nextval, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, ptitle);
			preparedStatement.setString(4, pfile);
			preparedStatement.setString(5, takendate);
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
		
	} // photowrite()
	
	public void photodelete(String pId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM photo WHERE pId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(pId) );
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
		
		
	} // photodelete(
	

}
