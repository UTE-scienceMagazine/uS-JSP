package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import connect.DBConnect;
import model.Article;
import model.Volume;

public class VolumeDAO {
	public ArrayList<Volume> loadVolume() throws SQLException{
		Connection connection=DBConnect.getConnection();
		
		String sql="Select * from volume where date <= CURDATE() ";
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
		rs.close();
		ps.close();
		connection.close();
		
		return list;
	}
	public Boolean hasVolume(String text) throws SQLException
	{
		Connection connection=DBConnect.getConnection();
		String sql = "SELECT volume.id FROM volume WHERE volume.title = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, text);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				rs.close();
				ps.close();
				connection.close();
				return true;
			}
				
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connection.close();
		return false;
	}
	public ArrayList<Volume> loadListVolume() throws SQLException{
		Connection connection=DBConnect.getConnection();
		
		String sql="Select * from volume";
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
		rs.close();
		ps.close();
		connection.close();
		
		return list;
	}
	public Boolean insertVolume(String text,String des,Date date) throws SQLException
	{
		Connection connection=DBConnect.getConnection();
		String sql = "INSERT INTO volume(title,date,description) values(?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, text);
			ps.setDate(2, (java.sql.Date) date);
			ps.setString(3, des);
			ps.executeUpdate();

			ps.close();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connection.close();
		return false;
	}
	public Integer getMaxVolume() throws SQLException
	{
		Connection connection=DBConnect.getConnection();
		String sql="SELECT MAX(volume.id) as id FROM volume";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			Integer id = rs.getInt("id");
			ps.close();
			rs.close();
			connection.close();
			return id;
		}
		else
		{
			ps.close();
			rs.close();
			connection.close();
			return -1;
		}
	}
	
}
