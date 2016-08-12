
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="Style.css"/>
</head>
<body background="wood.jpg">

<form action="pastAndupcomingTest.jsp" method="post" name="formName">

<input type="hidden" name="person" value="" />

<table align="right"  cellspacing="2" cellpadding="2">
<tr>
<td><marquee bgcolor="red" direction="down" height="100" width="800"><h1 align="center"><font color="white" size="7">University of Essex</font></h1></marquee>&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td align="right"><a href="NewQuestions.jsp"><input type="button" class="right" value="Create New Questions" name="createnewquestions"></a>       &nbsp;&nbsp;&nbsp;&nbsp; </td> 
<td align="right"><a href="designTest.jsp"><input type="button" class="right" value="Create New MCQ Test" name="createnewmcqtest"></a>&nbsp;&nbsp;&nbsp;&nbsp; </td> 

</tr>
</table>

<br/><br/>
<table width="100%" align="center">
<tr align="center"><td>
<font size="4" color="red">
Please open in a browser to use all functionalities!
</font></td></tr>

</table>
<br/><br/>

<table align="center" cellspacing="80">
<tr>
<td>

<div style="height:300px;overflow:auto;">


    <table border="1" cellspacing="5" cellpadding="5" background="tablewood.jpg">
    <tr>
    <th  colspan="3">Past Exams </th>
    </tr>

    <tr>
    <th> Date </th>
    <th> Module Code </th>
    <th> Question Set</th>
     </tr>
    

<%
int s=1;
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/ce832_rspere","root","mysql");
 
    
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM upcomingTests");
    
    while(rs.next())
    { 
    
    	
    %> 
   
    <tr>
    <td><font color="red"> <input type="text" class="down"  value=" <%=  rs.getString(2) %>"       name="datebtn" />        </font> </td>
    <td><font color="red"><input type="text" class="down" value=" <%=  rs.getString(3)   %> "   name="modulecodebtn"/>   </font> </td>
    <td><font color="red"><input type="submit" class="down" value=" <%=  rs.getString(4)  %>"     name="questionbtn"
    onclick="document.formName.person.value=' <%=  rs.getString(1) %>';"/>     </font> </td>
    </tr>
   
    <%
    
    }
    
    
    
}
catch(Exception e)
{
	
}

%>


</table>

</div>
 
</td>
<td>

<div style="height:300px;overflow:auto;">

  <table border="1" cellspacing="5" cellpadding="5" background="tablewood.jpg">
    <tr>
    <th  colspan="3">Upcoming Exams </th>
    </tr>

    <tr>
    <th> Date </th>
    <th> Module Code </th>
    <th> Question Set</th>
     </tr>
    

<%

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/ce832_rspere","root","mysql");
 
    
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM upcomingTests order by the_date DESC");
    
    while(rs.next())
    { 
    
    %> 
   
    <tr>
    <td><font color="red"><input type="text" class="down" value=" <%=  rs.getString(2) %> "  name="updatebtn" /></font> </td>
    <td><font color="red"><input type="text" class="down" value="  <%=  rs.getString(3)  %> " name="upmodulecodebtn"/></font> </td>
    <td><font color="red"><input type="submit" class="down" value=" <%=  rs.getString(4)  %>" name="questionbtn"/> </font> </td>
    </tr>
   
    <%
    
    }
    
    
    
}
catch(Exception e)
{
	
}

%>


</table>
</div>

</td>
</tr>

</table>

</form>

</body>
</html>