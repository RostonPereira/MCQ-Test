package ce832_rspere;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager 
{
	 private static ConnectionManager instance=null;
	  
	  private final String USERNAME="root";
	  private final String PASSWORD="mysql";
	  private final String CONN_STRING="jdbc:mysql://localhost:3307/ce832_rspere";
	  
	  private Connection conn=null;
	  
	  private ConnectionManager()
	  {}
	  
	  public static ConnectionManager getinstance()
	  {
		  if(instance==null)
		  {
			  instance=new ConnectionManager();
		  }
		  
		  return instance;
	  }
	  
	  private boolean openConnection()
	  {
		  try
		  {
			  conn=DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
		  }
		  catch(SQLException e)
		  {
			 e.printStackTrace();
		  }
		  
		  return true;
	  }
	  
	  public Connection getConnection()
	  {
		  if(conn==null)
		  {
			  if(openConnection())
			  {
				  System.out.println("Connecton Opened");
				  
				  return conn;
			  }
			  
			  else
			  {
				  return null;
			  }
		  }
		  
		  return conn;
	   }
	  
	  public void close()
	  {
		  System.out.println("Closing Connection.");
		  
		  try
		  {
			  
		  conn.close();
		 
		  
		  }
		  
		  catch(SQLException e)
		  {
			  e.printStackTrace();
		  }
		  
		  conn=null;
	  }
	}