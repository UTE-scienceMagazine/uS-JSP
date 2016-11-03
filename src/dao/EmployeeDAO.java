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
import model.Employee;
import model.User;

public class EmployeeDAO {
	
	public Employee findEmployeeById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Employee employee=new Employee();
		
		String sql="Select * from employee Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			employee.setId(rs.getInt("id"));
			employee.setEmail(rs.getString("email"));
			employee.setName(rs.getString("name"));
			employee.setPassword(rs.getString("password"));
			employee.setPhone(rs.getString("phone"));
			employee.setSex(rs.getInt("sex"));
			employee.setBirthday(rs.getTimestamp("birthday"));
			employee.setIdentityCard(rs.getString("identitycard"));
			employee.setRoleId(rs.getInt("roleId"));
			return employee;
		}
		
		return null;
	}
	
	public  Boolean insertEmployee(Employee employee) {
		
		Connection connection=DBConnect.getConnection();
		String sql= "INSERT INTO employee (email,password,roleId) VALUES(?,?,?)";
		 try {
	            PreparedStatement ps = connection.prepareCall(sql);
	         
	            ps.setString(1, employee.getEmail());	          
	            ps.setString(2, employee.getPassword());
	            ps.setInt(3, employee.getRoleId());
	            
	            ps.executeUpdate();
	            return true;
	        } catch (SQLException ex) {
	            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}
	
	public Boolean checkEmail(String email) {
		
		Connection connection=DBConnect.getConnection();
		String sql="Select * from user where email = '"+email+"'";
		PreparedStatement ps;
		try {
			ps=connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			if(rs.next()){
				connection.close();
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public Employee login(String email, String password,Integer roleId) {
		
		Connection conn=DBConnect.getConnection();
		String sql="select * from employee where email= '" +email+ "' and password= '" +password+ "' and roleId= '"+roleId+"'";
		PreparedStatement ps;
		try {
			ps=conn.prepareCall(sql);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Employee employee=new Employee();
				employee.setId(rs.getInt("id"));
				employee.setEmail(email);
				employee.setPassword(password);
				employee.setRoleId(roleId);
				conn.close();
				return employee;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/*public static void main(String[] args) {
		User user =new User("binhbinh0708@gmail.com","123456789",1);
		insertUser(user);
		System.out.println(user);
	}*/
}
