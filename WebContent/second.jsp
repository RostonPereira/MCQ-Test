<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Second Page</title>
</head>
<body>
<form name="second" action="RegServlet" method="post">
This is second page.
<br/><br/>
ID :<input type="text" name="id"/>
<br/>
<br/>
code <input type="text" name="code"/>
<br/>
<%


String date=request.getParameter("datebtn");

String code=request.getParameter("modulecodebtn");

String data=request.getParameter("questionbtn");

out.println("the prevoius page data "+date);
out.println("the prevoius page code "+code);
out.println("the prevoius page question "+data);

%>
<br/>
date <input type="text" name="date"/>
<br/>
<br/>
question <input type="text" name="question"/>
<br/>
<br/>
<input type="submit" value="Submit"/>
</form>
</body>
</html>