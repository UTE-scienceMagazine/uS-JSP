package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;


public class EmployeeArticleDAO {

	public boolean insertEA(Integer articleId, Integer employeeId,Integer status) {
		Connection connection=DBConnect.getConnection();
		String sql= "INSERT INTO employee_article (employeeId,articleId,status,date) VALUES(?,?,?,?)";
		 try {
	            PreparedStatement ps = connection.prepareCall(sql);
	         
	            ps.setInt(1, employeeId);	          
	            ps.setInt(2, articleId);
	            ps.setInt(3, status);
	            
	            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				Date parsedDate = new Date();
	            ps.setTimestamp(4, new Timestamp(parsedDate.getTime()));
	            
	            ps.executeUpdate();
	            return true;
	        } catch (SQLException ex) {
	            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	}

}
