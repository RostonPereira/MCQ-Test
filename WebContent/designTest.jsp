<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Design a Test</title>
<link rel="stylesheet" type="text/css" href="Style.css"/>

</head>
<body background="wood.jpg">
<form method="post" action="DesignTest">
<table width="50%" cellspacing="50">
<tr align="center">

<td> <font size="2" face="verdana" color="0B02FF"> Module Code : <input type="text" name="modulecode" value=""/> </font></td>

<td> <font size="2" face="verdana" color="0B02FF"> Date of the Scheduled MCQ : <input type="text" name="dateofscheduledexam" value="YYYY-MM-DD"/></font></td>

<td rowspan="2">

<%--  //======================================================Internal table for Search option --%>







<%--  //======================================================Internal table for Search option --%>
</td>

</tr>
<tr>
<td>
<font size="2" face="verdana" color="0B02FF"> Topic of the Question : <input type="text" name="topicofquestion" value=""/> </font>
</td>
<td>


</td>

</tr>
</table>


<br><br><br>
<table>
<tr>
<td>&nbsp;<font size="3" face="verdana" color="0B02FF"> Enter the number of Questions you want to set:</font> &nbsp;&nbsp;<input type="text" name="noofquestions" value="0"> &nbsp;&nbsp;

<input type="submit" name="submit" class="left" value="Enter"/> 
</td>
</tr>
</table>
<%

if(request.getAttribute("todo") != null)
{
	String string = request.getAttribute("todo").toString();
	int i = Integer.parseInt(string);
	//System.out.println(i);
	
%>
	
	<table width="50%">
	
	<% 
	
	for(int s=1;s<=i;s++)
	{
	
	%>
		<tr>
		<td> &nbsp;<font size="3" face="verdana" color="0B02FF"><b>Question:</b></font>&nbsp;<textarea rows="3" cols="44" name="question<%=s%>" ></textarea> </td>
		</tr>
		<tr>
		<td>&nbsp;<font size="3" face="verdana" color="0B02FF">Option A:</font>&nbsp;<input type="text" name="optionA<%= s %>" /> </td>
		</tr>
		<tr>
		<td>&nbsp;<font size="3" face="verdana" color="0B02FF">Option B:</font>&nbsp;<input type="text" name="optionB<%= s %>" /> </td>
		</tr>
		<tr>
		<td>&nbsp;<font size="3" face="verdana" color="0B02FF">Option C:</font>&nbsp;<input type="text" name="optionC<%= s %>" /> </td>
		</tr>
		<tr>
		<td>&nbsp;<font size="3" face="verdana" color="0B02FF">Option D:</font>&nbsp;<input type="text" name="optionD<%= s %>" /> </td>
		</tr>
		<tr>
		<td>&nbsp;<font size="3" face="verdana" color="0B02FF">Correct Answer:</font>&nbsp;<input type="text" name="correctAnswer<%= s %>" /> <br><br><br><br><br></td>
		
		</tr>
		
   <% 
   
	}
	
}


%>
 </table>
 <input type="submit" name="submit" value="Save" class="right"/>
 <a href="Home.jsp"><input type="button" class="right" value="Exit without Saving" name="Exitwithoutsaving"></a>
 </form>
</body>
</html>