package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class IT_JDBC_conn {
	public static Connection JDBC_connection() throws Exception {
		/*
		Connection conn=null;
	
		String jdbcUrl="jdbc:mysql://localhost:3306/ITJobs?useUnicode=true&characterEncoding=utf8";
		String dbId="root";
		String dbPass="";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		//conn.setAutoCommit( false );
		return conn;*/
		
		Context initCtx = new InitialContext();
	    Context envCtx = (Context) initCtx.lookup("java:comp/env");
	    DataSource ds = (DataSource)envCtx.lookup("jdbc/ItJobs");//컨텍스트 name
	    
	    return ds.getConnection();


	}
	
}
