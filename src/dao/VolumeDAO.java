package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Article;
import model.Volume;

public class VolumeDAO {
	public ArrayList<Volume> loadVolume() throws SQLException{
		Connection connection=DBConnect.getConnection();
		
		String sql="Select * from volume ";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<Volume> list=new ArrayList<>();
		while(rs.next()){
			Volume volume=new Volume();
			volume.setId(rs.getInt("id"));
			volume.setText(rs.getString("title"));
			volume.setDate(rs.getTimestamp("date"));
			volume.setDescription(rs.getString("description"));
			ArticleDAO adao=new ArticleDAO();
			ArrayList<Article> articles=adao.findArticlesByVolume(rs.getInt("id"));
			volume.setArticles(articles);
			list.add(volume);
		}
		
		return list;
	}
}
