package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.hibernate.Query;

import connect.DBConnect;
import model.Employee;
import model.Role;
import model.User;

public class EmployeeDAO {
	RoleDAO rdao=new RoleDAO();
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
			employee.setIdentitycard(rs.getString("identitycard"));
			Role role=rdao.findRoleById(rs.getInt("roleId"));
			employee.setRoleId(role);
			employee.setJoinday(rs.getTimestamp("joindate"));
			
			rs.close();
			ps.close();
			connection.close();
			return employee;
		}
		
		rs.close();
		ps.close();
		connection.close();
		return null;
	}
	
	public ArrayList<Employee> getEmployee() throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Employee> list=new ArrayList<>();
		
		String sql="Select * from employee";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Employee employee =new Employee();
			employee.setId(rs.getInt("id"));
			employee.setEmail(rs.getString("email"));
			employee.setName(rs.getString("name"));
			employee.setPassword(rs.getString("password"));
			employee.setPhone(rs.getString("phone"));
			employee.setSex(rs.getInt("sex"));
			employee.setAvatar(rs.getString("avatar"));
			employee.setBirthday(rs.getTimestamp("birthday"));
			employee.setIdentitycard(rs.getString("identitycard"));
			Role role=rdao.findRoleById(rs.getInt("roleId"));
			employee.setRoleId(role);
			employee.setAvailable(rs.getInt("available"));
			employee.setJoinday(rs.getTimestamp("joindate"));
			list.add(employee);
		}
		
		rs.close();
		ps.close();
		connection.close();
		return list;
	}
	
	public  Boolean insertEmployee(Employee employee) throws SQLException {
		
		Connection connection=DBConnect.getConnection();
		String sql= "INSERT INTO employee (email,password,roleId,joindate,available) VALUES(?,?,?,?,?)";
		 try {
	            PreparedStatement ps = connection.prepareCall(sql);
	         
	            ps.setString(1, employee.getEmail());	          
	            ps.setString(2, employee.getPassword());
	            ps.setInt(3, employee.getRoleId().getId());
	            ps.setTimestamp(4, employee.getJoinday());
	            ps.setInt(5,1);
	            ps.executeUpdate();
	            
	            ps.close();
	            connection.close();
	            return true;
	        } catch (SQLException ex) {
	            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
		 connection.close();
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

	public Employee login(String email, String password,Integer roleId) throws SQLException {
		
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
				Role role=rdao.findRoleById(rs.getInt("roleId"));
				employee.setRoleId(role);
				rs.close();
				ps.close();
				conn.close();
				return employee;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		conn.close();
		return null;
	}

	public boolean updateEmployee(Employee employee) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = DBConnect.getConnection();
        String sql = "UPDATE employee SET email = ?,password = ?,name= ?,roleId= ? WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1,employee.getEmail());
            ps.setString(2, employee.getPassword());
            ps.setString(3, employee.getName());
            ps.setInt(4, employee.getRoleId().getId());
            ps.setInt(5, employee.getId());
            ps.executeUpdate();
            
            ps.close();
            connection.close();
            return  true;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        connection.close();
        return false;
	}

	public boolean deleteEmloye(Integer id) {
		Connection connection=DBConnect.getConnection();
		String sql="Delete from employee Where id="+id;
		try {
			PreparedStatement ps=connection.prepareStatement(sql);
			
			return ps.executeUpdate()==1;
		} catch (Exception ex) {
			Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		  return false;
	}

	public boolean updateUser(Employee employee) throws SQLException {
		Connection connection = DBConnect.getConnection();
        String sql = "UPDATE employee SET name = ?,phone = ?,sex= ?,birthday= ?,identitycard=?, avatar=?  WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, employee.getName());
            ps.setString(2, employee.getPhone());
            ps.setInt(3, employee.getSex());
            ps.setTimestamp(4, employee.getBirthday());
            ps.setString(5, employee.getIdentitycard());
            ps.setString(6,employee.getAvatar());
            ps.setInt(7, employee.getId());
            ps.executeUpdate();
            ps.close();
            connection.close();
            return  true;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        connection.close();
        return false;
	}
	public ArrayList<Employee> getEmployeeByRole(Integer roleId) throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Employee> list=new ArrayList<>();
		
		String sql="Select * from employee where roleId="+roleId;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Employee employee =new Employee();
			employee.setId(rs.getInt("id"));
			employee.setEmail(rs.getString("email"));
			employee.setName(rs.getString("name"));
			employee.setPassword(rs.getString("password"));
			employee.setPhone(rs.getString("phone"));
			employee.setSex(rs.getInt("sex"));
			employee.setAvatar(rs.getString("avatar"));
			employee.setBirthday(rs.getTimestamp("birthday"));
			employee.setIdentitycard(rs.getString("identitycard"));
			Role role=rdao.findRoleById(rs.getInt("roleId"));
			employee.setRoleId(role);
			employee.setAvailable(rs.getInt("available"));
			employee.setJoinday(rs.getTimestamp("joindate"));
			list.add(employee);
		}
		rs.close();
		ps.close();
		connection.close();
		return list;
	}

}
