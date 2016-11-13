package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connect.DBConnect;
import model.HashTag;


public class HashtagDAO {
	public void insertHashTag(HashTag hashTag) throws SQLException{
		// TODO Auto-generated method stub
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO hashtag (articleId,tag) VALUES(?,?)";
		PreparedStatement ps = connection.prepareCall(sql);
	
		ps.setInt(1, hashTag.getArticleId());
		ps.setString(2, hashTag.getTag());
		ps.executeUpdate();
		connection.close();
	}
}
