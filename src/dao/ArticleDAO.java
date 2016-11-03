package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.DBConnect;
import model.Article;



public class ArticleDAO implements Serializable{

	public Article findArticleById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Article article=new Article();
		
		String sql="Select * from article Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDetail(rs.getString("detail"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			article.setStatusId(rs.getInt("statusId"));
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			return article;
		}
		
		return null;
	}
}
