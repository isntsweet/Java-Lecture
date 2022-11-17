package mysql;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class Ex03_Properties {

	public static void main(String[] args) {
		try {
			InputStream is = new FileInputStream("/Workspace/mysql.properties");
			Properties props = new Properties();
			props.load(is);

			String host = props.getProperty("host");
			String user = props.getProperty("user");
			String password = props.getProperty("password");
			String database = props.getProperty("database");
			String port = props.getProperty("port", "3306");
			String connStr = "jdbc:mysql://" + host + ":" + port + "/" + database;
			System.out.println(connStr);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
