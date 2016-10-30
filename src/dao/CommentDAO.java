package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Comment;

public class CommentDAO {

	public void insertComment(Comment cm) throws SQLException{
		// TODO Auto-generated method stub
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO comment (mess,date,status,userId,articleId) VALUES(?,?,?,?,?)";
		PreparedStatement ps = connection.prepareCall(sql);
		
		ps.setString(1, cm.getMess());
		ps.setTimestamp(2, cm.getDate());
		ps.setInt(3, cm.getStatus());
		ps.setInt(4,cm.getUserId());
		ps.setInt(5,cm.getArticleId());
		
		ps.executeUpdate();
		connection.close();
	}

	public ArrayList<Comment> loadComment(Integer id) throws SQLException {
		Connection connection=DBConnect.getConnection();
		String sql="SELECT * FROM comment Where articleId= "+id+" ORDER BY id DESC";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<Comment> list= new ArrayList<>();
		while(rs.next()){
			Comment cm=new  Comment();
			
			cm.setId(rs.getInt("id"));
			cm.setMess(rs.getString("mess"));
			cm.setDate(rs.getTimestamp("date"));
			cm.setStatus(rs.getInt("status"));
			cm.setUserId(rs.getInt("userId"));
			cm.setArticleId(rs.getInt("articleId"));
			
			list.add(cm);
		}
		
		
		return list;
	}

}
