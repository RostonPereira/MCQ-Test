<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Questions</title>
<link rel="stylesheet" type="text/css" href="Style.css"/>
</head>
<body background="wood.jpg">
<form method="post" action="RegServlet">


<table width="100%" cellspacing="50">
<tr align="center">

<td> <font size="2" face="verdana" color="0B02FF"> Module Code : <input type="text" name="modulecode" value="<%=session.getAttribute("DBmodulecode")%>"/> </font></td>

<td> <font size="2" face="verdana" color="0B02FF"> Date of the Scheduled MCQ : <input type="text" name="dateofscheduledexam" value="YYYY-MM-DD"/></font></td>

<td rowspan="2">

<%--  //======================================================Internal table for Search option --%>


<table border="1" cellpadding="30">
<tr>

<td> <font size="2" face="verdana" color="0B02FF"> Search by:  &nbsp;
 <br><br>

<select name="searchcriteria">
  <option>topic</option>
  <option>word that occurs</option>
  <option>word that does not occur</option>
</select>
</font>
</td>

<td> 
<font size="2" face="verdana" color="0B02FF">
  in &nbsp;
  <br><br>
<select name="searchin">
   <option></option>
  <option>question</option>
  <option>answer</option>
</select> 

</font> 
</td>

</tr>

<tr>
<td colspan="2" align="center">
<input type="text" name="searchbox"> &nbsp;&nbsp;&nbsp;<input type="submit" name="searchbutton" value="Go"/>
</td>
</tr>

</table>




<%--  //======================================================Internal table for Search option --%>
</td>

</tr>
<tr>
<td>
<font size="2" face="verdana" color="0B02FF"> Topic of the Question : <input type="text" name="topicofquestion" value="<%=session.getAttribute("DBtopic")%>"/> </font>
</td>
<td>


</td>

</tr>
</table>

<%--  //======================================================Next table for question --%>
<table>
<tr>
<td> 
<font color="red">
To modify an existing question first search for it via the Search Menu on top right of this page.
</font></td>
</tr>
</table>

<table align="left">
<tr>
<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4" face="verdana" color="white"><b>Question :</b> </font><br></td>
</tr>
<tr>
<td> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4"> <textarea rows="3" cols="70" name="questiontextarea"><%=session.getAttribute("DBquestion")%></textarea> </font> </td>
</tr>
</table>

<%--  //======================================================Next table for question --%>


<%--  //======================================================Next table for Answers --%>

<br><br><br><br><br><br><br><br>
<table align="left" cellspacing="20">
<tr>
<td> <br>
</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" face="verdana" color="white">Option A :&nbsp;&nbsp; 
 <textarea rows="2" cols="40" name="optionAtextarea"><%=session.getAttribute("DBoptionA")%></textarea>
</font><br></td>
</tr>

<tr>
<td> <br><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" face="verdana" color="white">Option B :&nbsp;&nbsp; 
<textarea rows="2" cols="40" name="optionBtextarea"><%=session.getAttribute("DBoptionB")%></textarea>
</font><br></td>
</tr>

<tr>
<td> <br><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" face="verdana" color="white">Option C :&nbsp;&nbsp; 
<textarea rows="2" cols="40" name="optionCtextarea"><%=session.getAttribute("DBoptionC")%></textarea>
</font><br></td>
</tr>

<tr>
<td> <br><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" face="verdana" color="white">Option D :&nbsp;&nbsp; 
<textarea rows="2" cols="40" name="optionDtextarea"><%=session.getAttribute("DBoptionD")%></textarea>
</font><br></td>
</tr>

<tr>
<td> <br><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" face="verdana" color="white">Correct Answer :&nbsp;&nbsp; 
<textarea rows="2" cols="40" name="correctanswertextarea"><%=session.getAttribute("DBcorrectAnswer")%></textarea>
</font><br></td>
</tr>


<tr>
<td align="center"> 
<br><br><br><br>

<a href="NewQuestions.jsp"> <input type="submit" name="saveandproceedtonext" class="right" value="Save And Proceed"/> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="Home.jsp"> <input type="button" name="exitwithoutsaving" class="right" value="Exit without Saving"/> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</td>
</tr>


</table>

<%--  //======================================================Next table for Answers --%>



</form>
</body>
</html>