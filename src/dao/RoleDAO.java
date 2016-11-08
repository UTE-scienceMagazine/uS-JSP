package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.DBConnect;
import model.Role;

public class RoleDAO {
	
	public Role findRoleById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Role role=new Role();
		
		String sql="Select * from role Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			role.setId(rs.getInt("id"));
			role.setName(rs.getString("name"));
			return role;
		}
		
		return null;
	}
}
