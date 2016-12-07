package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.hibernate.Query;

import connect.DBConnect;
import model.User;

public class UserDAO {
	
	public User findUserById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		User user=new User();
		
		String sql="Select * from user Where id="+id;
		PreparedStatement ps =connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			user.setId(rs.getInt("id"));
			user.setEmail(rs.getString("email"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setPhone(rs.getString("phone"));
			user.setSex(rs.getInt("sex"));
			user.setAvatar(rs.getString("avatar"));
			user.setBirthday(rs.getTimestamp("birthday"));
			user.setIdentitycard(rs.getString("identitycard"));
			user.setRoleId(rs.getInt("roleId"));
			return user;
		}
		rs.close();
		ps.close();
		connection.close();
		return null;
	}
	
	public  Boolean insertUser(User user) {
		
		Connection connection=DBConnect.getConnection();
		String sql= "INSERT INTO user (email,password,roleId) VALUES(?,?,?)";
		 try {
	            PreparedStatement ps = connection.prepareCall(sql);
	         
	            ps.setString(1, user.getEmail());	          
	            ps.setString(2, user.getPassword());
	            ps.setInt(3, user.getRoleId());
	            
	            ps.executeUpdate();
	            ps.close();
	            return true;
	        } catch (SQLException ex) {
	            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	
	public Boolean checkEmail(String email) throws SQLException {
		
		Connection connection=DBConnect.getConnection();
		String sql="Select * from user where email = '"+email+"'";
		PreparedStatement ps;
		try {
			ps=connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			if(rs.next()){
				rs.close();
				ps.close();
				connection.close();
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		connection.close();
		return false;
	}

	public User login(String email, String password) throws SQLException {
		
		Connection conn=DBConnect.getConnection();
		String sql="select * from user where email= '" +email+ "' and password= '" +password+ "'";
		PreparedStatement ps;
		try {
			ps=conn.prepareCall(sql);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setSex(rs.getInt("sex"));
				user.setAvatar(rs.getString("avatar"));
				user.setBirthday(rs.getTimestamp("birthday"));
				user.setIdentitycard(rs.getString("identitycard"));
				user.setRoleId(rs.getInt("roleId"));
				rs.close();
				ps.close();
				conn.close();
				return user;
			}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	
		
		conn.close();
		return null;
	}

	public boolean updateUser(User user) throws SQLException {
		Connection connection = DBConnect.getConnection();
        String sql = "UPDATE user SET name = ?,phone = ?,sex= ?,birthday= ?,identitycard=?,avatar=?  WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getPhone());
            ps.setInt(3, user.getSex());
            ps.setTimestamp(4, user.getBirthday());
            ps.setString(5, user.getIdentitycard());
            ps.setString(6,user.getAvatar());
            ps.setInt(7, user.getId());
            ps.executeUpdate();
            
            ps.close();
            connection.close();
            return  true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            connection.close();
        }
        return false;
		
	}
	
	/*public static void main(String[] args) {
		User user =new User("binhbinh0708@gmail.com","123456789",1);
		insertUser(user);
		System.out.println(user);
	}*/
}
