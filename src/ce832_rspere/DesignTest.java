package ce832_rspere;

import java.io.IOException;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;






@WebServlet("/DesignTest")
public class DesignTest extends HttpServlet 
{
	int christmas;
	int s=0;
	int insideloop;
	
	 
	 
	private static final long serialVersionUID = 1L;
	
	
	
    public DesignTest() 
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		
		
		String number=request.getParameter("noofquestions");
   	    int i=Integer.parseInt(number);
   	    
   	   
   	 christmas=i;
   	 System.out.println(christmas);
   	  
		if(i!=0)
		{
			insideloop=i;
			request.setAttribute("todo", i);
       	    request.getRequestDispatcher("/designTest.jsp").forward(request, response); 
	    	
		}
		
		else
		{
			
			          System.out.println("outside for loop.");
			          System.out.println("inside loop="+insideloop);
			
			         for(s=1;s<=insideloop;s++)
			         {
				 
			                  	 System.out.println("Inside for loop.");
			
			
				                   System.out.println("outside try block.");
			
				 try
				 {
					

					 Class.forName("com.mysql.jdbc.Driver");
						
					 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/ce832_rspere","root","mysql");
					 
			         System.out.println("cONNECTION MADE");
			             
			  //System.out.println(request.getParameter("question"+s+""));
			             
			         String query="INSERT INTO mcqQuestions values (?,?,?,?,?,?,?,?) ";
			         
			 //  String query="INSERT INTO mcqQuestions values ('one','two','three','four','five','six','seven','eight')";

				PreparedStatement stmt = conn.prepareStatement(query);

				
				
				    stmt.setString(1,request.getParameter("question"+s+""));
				    System.out.println("the column output"+request.getParameter("question"+s+""));
				    stmt.setString(2,request.getParameter("question"+s+""));
			     	stmt.setString(3,request.getParameter("question"+s+""));
					stmt.setString(4,request.getParameter("optionA"+s+""));
					stmt.setString(5,request.getParameter("optionB"+s+""));
					stmt.setString(6,request.getParameter("optionC"+s+""));
					stmt.setString(7,request.getParameter("optionD"+s+""));
					stmt.setString(8,request.getParameter("correctAnswer"+s+""));

					stmt.executeUpdate();
					
			        conn.close();
			
				}
				
				catch(SQLException | ClassNotFoundException a)
				{
					 System.out.println("Error in Connection"+a);
				}
					 
			}//End of for loop
				 
			         response.sendRedirect("designTest.jsp");
	    }//End of for else
    
	}
		
}
