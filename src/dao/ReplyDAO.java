package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Comment;
import model.Reply;
import model.User;

public class ReplyDAO{
	UserDAO udao=new UserDAO();
	CommentDAO cdao=new CommentDAO();
	
	public void insertReply(Reply rep) throws SQLException{
		// TODO Auto-generated method stub
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO reply (mess,date,status,userId,comId) VALUES(?,?,?,?,?)";
		PreparedStatement ps = connection.prepareCall(sql);
	
		ps.setString(1, rep.getMess());
		ps.setTimestamp(2, rep.getDate());
		ps.setInt(3, rep.getStatus());
		ps.setInt(4,rep.getUserId().getId());
		ps.setInt(5,rep.getComId().getId());
		
		ps.executeUpdate();
		connection.close();
	}
	
	public ArrayList<Reply> loadReply(Integer id) throws SQLException {
		Connection connection=DBConnect.getConnection();
		String sql="SELECT * FROM reply Where comId= "+id+" ORDER BY id DESC";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<Reply> list= new ArrayList<>();
		while(rs.next()){
			Reply rep=new  Reply();
			
			rep.setId(rs.getInt("id"));
			rep.setMess(rs.getString("mess"));
			rep.setDate(rs.getTimestamp("date"));
			rep.setStatus(rs.getInt("status"));
			User user=udao.findUserById(rs.getInt("userId"));
			rep.setUserId(user);
			Comment comment=cdao.findCommetById(rs.getInt("comId"));
			rep.setComId(comment);
			
			list.add(rep);
		}
		
		
		return list;
	}
}
