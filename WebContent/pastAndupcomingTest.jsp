<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Past and Upcoming</title>
</head>
<body background="wood.jpg">
<form>
<br><br><br>
<table>
 
<%



String data=request.getParameter("person");
System.out.println("Person"+data);



try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/ce832_rspere","root","mysql");
 
    
   Statement stmt=conn.createStatement();
  // String query="SELECT * FROM mcqQuestions WHERE module_code='"+coded.trim()+"' AND new_date='"+dated.trim()+"'";
  
    String query="SELECT * FROM mcqQuestions WHERE id='"+data.trim()+"'";

   ResultSet rs=stmt.executeQuery(query);
  
    System.out.println(query);
 
  
    while(rs.next())
    { 
    
 
    %> 
    
    <tr>
     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="0B02FF">Question :</font>&nbsp;<font color="red"> <textarea rows="3" cols="44" class="down" name="debn" ><%=rs.getString(5)%></textarea> </font><br></td>
     </tr>
     <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="0B02FF">Option A :</font>&nbsp;<font color="red"> <textarea rows="1" cols="30" class="down" name="dtn"><%=rs.getString(6)%></textarea> </font><br></td>
      </tr>
      <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="0B02FF">Option B :</font>&nbsp;<font color="red"> <textarea rows="1" cols="30" class="down"  name="datebtn"> <%=rs.getString(7)%> </textarea> </font><br></td>
      </tr>
      <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="0B02FF">Option C :</font>&nbsp;<font color="red"><textarea rows="1" cols="30" class="down" name="modulecodebtn"><%=rs.getString(8)%></textarea>  </font> <br></td>
      </tr>
      <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="0B02FF">Option D :</font>&nbsp;<font color="red"><textarea rows="1" cols="30" class="down" name="questionbtn"><%=rs.getString(9)%></textarea> </font><br><br><br></td>
      
    </tr>

   
   
   
    <%
    
    }
    
    
    
}
catch(Exception e)
{
	
}

%>


</table>


 </form>
</body>
</html>