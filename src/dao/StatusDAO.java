package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Status;

public class StatusDAO {
	public Status findStatusId(Integer id) throws SQLException {
		
		Connection connection=DBConnect.getConnection();
		Status status=new Status();
		
		String sql="Select * from status Where id=?";
		PreparedStatement ps=connection.prepareCall(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			status.setId(rs.getInt("id"));
			status.setName(rs.getString("name"));
			
			ps.close();
			return status;
		}
		ps.close();
		return null;
	}
	
	
public ArrayList<Status> findStatus() throws SQLException {
		
		Connection connection=DBConnect.getConnection();
		
		
		String sql="Select * from status";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<Status> list=new ArrayList<>();
		while(rs.next()){
			Status status=new Status();
			status.setId(rs.getInt("id"));
			status.setName(rs.getString("name"));
			list.add(status);
		}
		ps.close();
		return list;
	}
}
