package dao;

import java.io.Serializable;
import java.sql.*;

import connect.DBConnect;
import model.Feedback;
@SuppressWarnings({ "serial", "unused" })
public class FeedbackDAO implements Serializable {
	public static Feedback getInfo(Integer id) throws SQLException
	{
		Feedback fb = new Feedback();
		Connection con=DBConnect.getConnection();
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery("SELECT * FROM feedback WHERE id="+id);
		if(rs.next())
		{
			fb.setId(rs.getInt("id"));
			fb.setArticleID(rs.getInt("articleId"));
			fb.setTesterId(rs.getInt("testerId"));
			fb.setDescription(rs.getString("description"));
			fb.setLicense(rs.getString("license"));
			fb.setMeaning(rs.getString("meaning"));
			fb.setResult(rs.getString("result"));
			fb.setNeedEdit(rs.getString("neededit"));
			return fb;
		}
		return null;
		
	}
	
	public static void newFeedback(Integer testerId,Integer articleId,String description,String meaning,String license,String result,String neededit)
	{
		
	}
}
