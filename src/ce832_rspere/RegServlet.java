package ce832_rspere;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet 
{
	String s;
	private static final long serialVersionUID = 1L;


	public RegServlet() 
	{
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		String s=""; 
		String searchbox=request.getParameter("searchbox");

		String DBid="";
		String DBmodulecode="";
		String DBdate="";
		String DBtopic="";
		String DBquestion="";
		String DBoptionA="";
		String DBoptionB="";
		String DBoptionC="";
		String DBoptionD="";
		String DBcorrectAnswer="";

		java.sql.Connection conn1 = null;


		if(!searchbox.equalsIgnoreCase(s)) //this is for overall page because of only one submit button
		{

			String searchcriteria=request.getParameter("searchcriteria");
			String searchin=request.getParameter("searchin");

			try
			{

				conn1 =Lib.getConnection();


				if(!searchin.equalsIgnoreCase(""))
				{




					if(searchin.equalsIgnoreCase("question"))
					{



						if(searchcriteria.equalsIgnoreCase("word that occurs"))
						{


							java.sql.Statement stmt3=conn1.createStatement();

							ResultSet rs3=stmt3.executeQuery("SELECT * FROM mcqQuestions WHERE question LIKE '%"+searchbox+"%' ");

							System.out.println("Inside search question like");

							while(rs3.next())

							{ 
								DBid=rs3.getString(1);
								DBmodulecode=rs3.getString(2);
								DBdate=rs3.getString(3);
								DBtopic= rs3.getString(4);
								DBquestion=rs3.getString(5);
								DBoptionA= rs3.getString(6);
								DBoptionB=rs3.getString(7);
								DBoptionC=rs3.getString(8);
								DBoptionD=rs3.getString(9);
								DBcorrectAnswer=rs3.getString(10);


							}

							request.getSession().setAttribute("DBid",DBid); 
							request.getSession().setAttribute("DBmodulecode",DBmodulecode); 
							request.getSession().setAttribute("DBdate",DBdate); 
							request.getSession().setAttribute("DBtopic",DBtopic);
							request.getSession().setAttribute("DBquestion",DBquestion); 

							request.getSession().setAttribute("DBoptionA",DBoptionA);      request.getSession().setAttribute("DBoptionC",DBoptionC);
							request.getSession().setAttribute("DBoptionB",DBoptionB);      request.getSession().setAttribute("DBoptionD",DBoptionD);
							request.getSession().setAttribute("DBcorrectAnswer",DBcorrectAnswer); 


						}
						else if(searchcriteria.equalsIgnoreCase("word that does not occur"))
						{

							//Search in word that does not occur

							java.sql.Statement stmt3=conn1.createStatement();

							ResultSet rs3=stmt3.executeQuery("SELECT * FROM mcqQuestions WHERE question NOT LIKE '%"+searchbox+"%' ");

							System.out.println("Inside search question Not like");

							while(rs3.next())

							{ 

								DBid=rs3.getString(1);
								DBmodulecode=rs3.getString(2);
								DBdate=rs3.getString(3);
								DBtopic= rs3.getString(4);
								DBquestion=rs3.getString(5);
								DBoptionA= rs3.getString(6);
								DBoptionB=rs3.getString(7);
								DBoptionC=rs3.getString(8);
								DBoptionD=rs3.getString(9);
								DBcorrectAnswer=rs3.getString(10);


							}

							request.getSession().setAttribute("DBid",DBid); 
							request.getSession().setAttribute("DBmodulecode",DBmodulecode); 
							request.getSession().setAttribute("DBdate",DBdate); 
							request.getSession().setAttribute("DBtopic",DBtopic);
							request.getSession().setAttribute("DBquestion",DBquestion); 

							request.getSession().setAttribute("DBoptionA",DBoptionA);      request.getSession().setAttribute("DBoptionC",DBoptionC);
							request.getSession().setAttribute("DBoptionB",DBoptionB);      request.getSession().setAttribute("DBoptionD",DBoptionD);
							request.getSession().setAttribute("DBcorrectAnswer",DBcorrectAnswer); 

						}





					}

					else if(searchin.equalsIgnoreCase("answer")) //Else for if search-in is to search in an answer
					{

						if(searchcriteria.equalsIgnoreCase("word that occurs"))
						{


							java.sql.Statement stmt3=conn1.createStatement();

							ResultSet rs3=stmt3.executeQuery("SELECT * FROM mcqQuestions WHERE correctAnswer LIKE '%"+searchbox+"%' ");

							System.out.println("Inside search for correct answer  like");

							while(rs3.next())

							{ 

								DBid=rs3.getString(1);
								DBmodulecode=rs3.getString(2);
								DBdate=rs3.getString(3);
								DBtopic= rs3.getString(4);
								DBquestion=rs3.getString(5);
								DBoptionA= rs3.getString(6);
								DBoptionB=rs3.getString(7);
								DBoptionC=rs3.getString(8);
								DBoptionD=rs3.getString(9);
								DBcorrectAnswer=rs3.getString(10);


							}

							request.getSession().setAttribute("DBid",DBid); 
							request.getSession().setAttribute("DBmodulecode",DBmodulecode); 
							request.getSession().setAttribute("DBdate",DBdate); 
							request.getSession().setAttribute("DBtopic",DBtopic);
							request.getSession().setAttribute("DBquestion",DBquestion); 

							request.getSession().setAttribute("DBoptionA",DBoptionA);      request.getSession().setAttribute("DBoptionC",DBoptionC);
							request.getSession().setAttribute("DBoptionB",DBoptionB);      request.getSession().setAttribute("DBoptionD",DBoptionD);
							request.getSession().setAttribute("DBcorrectAnswer",DBcorrectAnswer); 


						}
						else if(searchcriteria.equalsIgnoreCase("word that does not occur"))
						{

							//Search in word that does not occur

							java.sql.Statement stmt3=conn1.createStatement();

							ResultSet rs3=stmt3.executeQuery("SELECT * FROM mcqQuestions WHERE correctAnswer NOT LIKE '%"+searchbox+"%' ");

							System.out.println("Inside search for correct answer NOT like");

							while(rs3.next())

							{ 
								DBid=rs3.getString(1);
								DBmodulecode=rs3.getString(2);
								DBdate=rs3.getString(3);
								DBtopic= rs3.getString(4);
								DBquestion=rs3.getString(5);
								DBoptionA= rs3.getString(6);
								DBoptionB=rs3.getString(7);
								DBoptionC=rs3.getString(8);
								DBoptionD=rs3.getString(9);
								DBcorrectAnswer=rs3.getString(10);



							}

							request.getSession().setAttribute("DBid",DBid); 
							request.getSession().setAttribute("DBmodulecode",DBmodulecode); 
							request.getSession().setAttribute("DBdate",DBdate); 
							request.getSession().setAttribute("DBtopic",DBtopic);
							request.getSession().setAttribute("DBquestion",DBquestion); 

							request.getSession().setAttribute("DBoptionA",DBoptionA);      request.getSession().setAttribute("DBoptionC",DBoptionC);
							request.getSession().setAttribute("DBoptionB",DBoptionB);      request.getSession().setAttribute("DBoptionD",DBoptionD);
							request.getSession().setAttribute("DBcorrectAnswer",DBcorrectAnswer); 


						}



					}//End of Else for if search-in is to search in an answer







				}
				else
				{


					java.sql.Statement stmt2=conn1.createStatement();

					ResultSet rs2=stmt2.executeQuery("SELECT * FROM mcqQuestions WHERE "+searchcriteria+"='"+searchbox+"' ");

					System.out.println("Inside search via topic");

					while(rs2.next())

					{ 


						DBid=rs2.getString(1);
						DBmodulecode=rs2.getString(2);
						DBdate=rs2.getString(3);
						DBtopic= rs2.getString(4);
						DBquestion=rs2.getString(5);
						DBoptionA= rs2.getString(6);
						DBoptionB=rs2.getString(7);
						DBoptionC=rs2.getString(8);
						DBoptionD=rs2.getString(9);
						DBcorrectAnswer=rs2.getString(10);



					}


				} //End of else search by topic




			}//End of try
			catch(Exception e)
			{

			}

			request.getSession().setAttribute("DBid",DBid); 
			request.getSession().setAttribute("DBmodulecode",DBmodulecode); 
			request.getSession().setAttribute("DBdate",DBdate); 
			request.getSession().setAttribute("DBtopic",DBtopic);
			request.getSession().setAttribute("DBquestion",DBquestion); 

			request.getSession().setAttribute("DBoptionA",DBoptionA);      request.getSession().setAttribute("DBoptionC",DBoptionC);
			request.getSession().setAttribute("DBoptionB",DBoptionB);      request.getSession().setAttribute("DBoptionD",DBoptionD);
			request.getSession().setAttribute("DBcorrectAnswer",DBcorrectAnswer); 

		}//End of the biggest if statement which use because of two submit buttons


		else
		{

			String modulecode=request.getParameter("modulecode");
			String newdate=request.getParameter("dateofscheduledexam");
			String topic=request.getParameter("topicofquestion");
			String newquestion=request.getParameter("questiontextarea");
			String optionA=request.getParameter("optionAtextarea");
			String optionB=request.getParameter("optionBtextarea");
			String optionC=request.getParameter("optionCtextarea");
			String optionD=request.getParameter("optionDtextarea");
			String correctAnswer=request.getParameter("correctanswertextarea");

			String id=modulecode.concat(newdate);
			System.out.println("The concatinated string is :"+id);

			GetsSets sets=new GetsSets();

			//sets.setId(id);
			//sets.setCode(code);
			//sets.setDate(date);
			//sets.setQuestion(question);

			sets.setModulecode(modulecode);
			sets.setNewdate(newdate);
			sets.setTopic(topic);
			sets.setNewquestion(newquestion);
			sets.setOptionA(optionA);
			sets.setOptionB(optionB);
			sets.setOptionC(optionC);
			sets.setOptionD(optionD);
			sets.setCorrectanswer(correctAnswer);
			sets.setNid(id);

			try 
			{
				DbManager.insert(sets);
			} 

			catch (ClassNotFoundException | SQLException e) 
			{

				e.printStackTrace();
			}


		}

		// s=request.getParameter("id");
		//int id=Integer.parseInt(s);
		//String code=request.getParameter("code");
		//String date=request.getParameter("date");
		//String question=request.getParameter("question");




		response.sendRedirect("NewQuestions.jsp");

	}

}
