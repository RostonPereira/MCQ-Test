package ce832_rspere;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class DbManager 
{

	static int id;
	static String idconvert,moduleCode,date,question;
	

	private static Connection conn = null;
	
	static 
	{
		
		try
		{
			conn = Lib.getConnection();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}

	public static void insert(GetsSets sets) throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");

		//String sql = "INSERT INTO pastTests (id,module_code,the_date,questions) values (?,?,?,?) ";
		
		String query="INSERT INTO mcqQuestions (id,module_code,new_date,topic,question,optionA,optionB,optionC,optionD,correctAnswer) values (?,?,?,?,?,?,?,?,?,?) ";

		PreparedStatement stmt = conn.prepareStatement(query);

		//stmt.setInt(1, sets.getId());
		//stmt.setString(2, sets.getCode());
		//stmt.setString(3, sets.getDate());
		//stmt.setString(4, sets.getQuestion());
		
		stmt.setString(1, sets.getNid());
		stmt.setString(2, sets.getModulecode());
		stmt.setString(3, sets.getNewdate());
		stmt.setString(4, sets.getTopic());
		stmt.setString(5, sets.getNewquestion());
		stmt.setString(6, sets.getOptionA());
		stmt.setString(7, sets.getOptionB());
		stmt.setString(8, sets.getOptionC());
		stmt.setString(9, sets.getOptionD());
		stmt.setString(10, sets.getCorrectanswer());

		stmt.executeUpdate();
		stmt.close();
        //conn.close();
		//ConnectionManager.getinstance().close();
		
		//String query1="INSERT INTO upcomingTests (id,the_date,module_code,questions) values (?,?,?,?) WHERE NOT EXISTS (select * from upcomingTests where id='"+sets.getNid()+"')";

		String query1="INSERT INTO upcomingTests (id,the_date,module_code,questions) values (?,?,?,?)";
		
		PreparedStatement stmt1 = conn.prepareStatement(query1);
		
		stmt1.setString(1, sets.getNid());
		stmt1.setString(2, sets.getNewdate());
		stmt1.setString(3, sets.getModulecode());
		stmt1.setString(4, "Questions");
	
		
		stmt1.executeUpdate();
		stmt1.close();

	}

}
