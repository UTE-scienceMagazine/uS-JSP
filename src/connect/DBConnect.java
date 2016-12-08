package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String dbname="duongvu1234";
	static String dbuser="duongvu1234";
	static String dbpass="123456789";
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://72.13.93.206:3307/"+dbname+"?useUnicode=yes&characterEncoding=UTF-8",dbuser,dbpass);
			//conn=DriverManager.getConnection("jdbc:mysql://localhost/utescience","root","");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
	
}
