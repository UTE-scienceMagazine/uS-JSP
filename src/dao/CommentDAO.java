package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Article;
import model.Comment;
import model.User;

public class CommentDAO {

	UserDAO udao=new UserDAO();
	ArticleDAO adao=new ArticleDAO();
	
	public void insertComment(Comment cm) throws SQLException{
		// TODO Auto-generated method stub
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO comment (mess,date,status,userId,articleId) VALUES(?,?,?,?,?)";
		PreparedStatement ps = connection.prepareCall(sql);
	
		ps.setString(1, cm.getMess());
		ps.setTimestamp(2, cm.getDate());
		ps.setInt(3, cm.getStatus());
		ps.setInt(4,cm.getUserId().getId());
		ps.setInt(5,cm.getArticleId().getId());
		
		ps.executeUpdate();
		
		ps.close();
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
			User user=udao.findUserById(rs.getInt("userId"));
			cm.setUserId(user);
			Article article=adao.findArticleById(rs.getInt("articleId"));
			cm.setArticleId(article);
			list.add(cm);
		}
		
		rs.close();
		ps.close();
		connection.close();
		return list;
	}
	public Comment findCommetById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Comment comment=new Comment();
		
		String sql="Select * from comment Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			comment.setId(rs.getInt("id"));
			comment.setMess(rs.getString("mess"));
			comment.setDate(rs.getTimestamp("date"));
			comment.setStatus(rs.getInt("status"));
			User user=udao.findUserById(rs.getInt("userId"));
			comment.setUserId(user);
			Article article=adao.findArticleById(rs.getInt("articleId"));
			comment.setArticleId(article);
			
			rs.close();
			ps.close();
			connection.close();
			return comment;
		}
		
		rs.close();
		ps.close();
		connection.close();
		return null;
	}
	
	public ArrayList<Comment> loadCommentByUser(Integer id) throws SQLException {
		Connection connection=DBConnect.getConnection();
		String sql="SELECT * FROM comment Where userId= "+id+" ORDER BY id DESC";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<Comment> list= new ArrayList<>();
		while(rs.next()){
			Comment cm=new  Comment();
			
			cm.setId(rs.getInt("id"));
			cm.setMess(rs.getString("mess"));
			cm.setDate(rs.getTimestamp("date"));
			cm.setStatus(rs.getInt("status"));
			User user=udao.findUserById(rs.getInt("userId"));
			cm.setUserId(user);
			Article article=adao.findArticleById(rs.getInt("articleId"));
			cm.setArticleId(article);
			list.add(cm);
		}
		
		rs.close();
		ps.close();
		connection.close();
		
		return list;
	}
}
