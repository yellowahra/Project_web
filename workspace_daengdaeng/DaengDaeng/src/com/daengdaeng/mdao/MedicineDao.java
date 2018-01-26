package com.daengdaeng.mdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.daengdaeng.mdto.MedicineDto;



public class MedicineDao {
	
	public ArrayList<MedicineDto> mlist() {
		ArrayList<MedicineDto> dtos = new ArrayList<MedicineDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		

			
				
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
							"daengdaeng", "oracle_11g");
				
					
				String query = "SELECT mId, cid, dname, mname, mdosage, mfreq, mseff, mmemo, mDate "
						+ "FROM medicine ORDER BY mDate ASC";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int mId = resultSet.getInt("mId");
					String cid = resultSet.getString("cid");
					String dname = resultSet.getString("dname");
					String mname = resultSet.getString("mname");
					String mdosage = resultSet.getString("mdosage");
					String mfreq = resultSet.getString("mfreq");
					String mseff = resultSet.getString("mseff");
					String mmemo = resultSet.getString("mmemo");
								
					Timestamp mDate = resultSet.getTimestamp("mDate");
								
					MedicineDto dto = new MedicineDto(mId, cid, dname, mname, mdosage, mfreq, mseff, mmemo, mDate);
					
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
	
	public void mwrite(String cid, String dname, String mname, String mdosage, String mfreq, String mseff, String mmemo) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			
			String query = "INSERT INTO medicine (mId, cid, dname, mname, mdosage, mfreq, mseff, mmemo) "
					+ "VALUES (medicine_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, cid);
			preparedStatement.setString(2, dname);
			preparedStatement.setString(3, mname);
			preparedStatement.setString(4, mdosage);
			preparedStatement.setString(5, mfreq);
			preparedStatement.setString(6, mseff);
			preparedStatement.setString(7, mmemo);
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
	
	public void mdelete(String mId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
			String query = "DELETE FROM medicine WHERE mId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(mId) );
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
	public ArrayList<MedicineDto> mmlist() {
		ArrayList<MedicineDto> dtos = new ArrayList<MedicineDto>(); 
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
			
				
			String query = "SELECT mId, cid, dname, mname, mdosage, mfreq, mseff, mmemo, mDate "
					+ "FROM medicine ORDER BY mDate ASC";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int mId = resultSet.getInt("mId");
				String cid = resultSet.getString("cid");
				String dname = resultSet.getString("dname");
				String mname = resultSet.getString("mname");
				String mdosage = resultSet.getString("mdosage");
				String mfreq = resultSet.getString("mfreq");
				String mseff = resultSet.getString("mseff");
				String mmemo = resultSet.getString("mmemo");
							
				Timestamp mDate = resultSet.getTimestamp("mDate");
							
				MedicineDto dto = new MedicineDto(mId, cid, dname, mname, mdosage, mfreq, mseff, mmemo, mDate);
				
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













