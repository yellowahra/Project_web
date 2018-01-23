package com.daengdaeng.ddao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.daengdaeng.ddto.DogDto;




public class DogDao {
	
	public ArrayList<DogDto> dlist() {
		ArrayList<DogDto> dtos = new ArrayList<DogDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
	
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "SELECT dId, cid, dname, dfilename, dbd, dad, dage, dbreed, dgender, dweight, didnum "
					+ "FROM dog";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			
			while(resultSet.next()) {
				int dId = resultSet.getInt("dId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String dfilename = resultSet.getString("dfilename");
				String dbd = resultSet.getString("dbd");
				String dad = resultSet.getString("dad");
				String dage = resultSet.getString("dage");
				String dbreed = resultSet.getString("dbreed");
				String dgender = resultSet.getString("dgender");
				String dweight = resultSet.getString("dweight");
				String didnum = resultSet.getString("didnum");
			
				DogDto dto = new DogDto(dId, cid, dname, dfilename, dbd, dad, dage, dbreed, dgender, dweight, didnum);
				
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
	} // dlist()
	
	public void dwrite(String cid, String dname, String dfilename, String dbd, String dad, String dage, String dbreed, String dgender, String dweight, String didnum) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO dog (dId, cid, dname, dfilename, dbd, dad, dage, dbreed, dgender, dweight, didnum )"
					+ "VALUES (dog_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, dfilename);
			preparedStatement.setString(4, dbd);
			preparedStatement.setString(5, dad);	
			preparedStatement.setString(6, dage);
			preparedStatement.setString(7, dbreed);	
			preparedStatement.setString(8, dgender);
			preparedStatement.setString(9, dweight);	
			preparedStatement.setString(10, didnum);
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
		
	} // dwrite()
	
	public void ddelete(String dId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM dog WHERE dId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(dId) );
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
		
		
	} // ddelete(
	

}
