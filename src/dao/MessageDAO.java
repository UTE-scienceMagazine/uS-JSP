package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Message;

public class MessageDAO {
	public ArrayList<Message> getListMessage()
	{
		Connection connection=DBConnect.getConnection();
		
		String sql="SELECT * FROM message WHERE message.status = 1 ";
		
		ArrayList<Message> list = new ArrayList<>() ;
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Message ms = new Message();
				ms.setId(rs.getInt("id"));
				ms.setArticleId(rs.getInt("articleId"));
				ms.setText(rs.getString("text"));
				ms.setEditorEmail(rs.getString("editorEmail"));
				ms.setStatus(rs.getInt("status"));
				
				list.add(ms);				
			}
			ps.close();
			connection.close();
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void insertMs(Message ms)
	{
		Connection connection=DBConnect.getConnection();
		String sql =" INSERT INTO message(editorEmail, articleId, text, status) VALUES (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, ms.getEditorEmail());
			ps.setInt(2, ms.getArticleId());
			ps.setString(3, ms.getText());
			ps.setInt(4, 1);
			
			ps.executeUpdate();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Boolean hasMs()
	{
		Connection connection=DBConnect.getConnection();
		String sql ="SELECT id FROM message WHERE status = 1";
		PreparedStatement ps;
		try {
			ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				ps.close();
				rs.close();
				connection.close();
				return true;
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public void seenMs(Integer id)
	{
		Connection connection=DBConnect.getConnection();
		String sql="UPDATE message SET status = 0 WHERE id=?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
