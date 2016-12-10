package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String dbname="utescience";
	static String dbuser="root";
	static String dbpass="33iykJgIpL";
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://mysql39927-uscience.jelastic.skali.net:3306/"+dbname+"?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8", dbuser, dbpass);
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
