<%@page import="java.util.Date" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP DEMO</title>
</head>
<body>
 
  <h1> Hello World  From HTML !!! </h1>
  
  <%= "<h1> Hello From JSP </h1>" %>
  
  <%
   int x=10;
  %>
  
  <input type="text"  value="<%= x %>"><br/>
  
  <%
  
  for(int i=0;i<10; i++){
	  out.print("i = " + i + "<br/>");
  }
  
  %>



The current date is <%=new Date() %>    </br>

<%--JSP Implicit Objects

  out - JspWriter
  application - ServletContext
  config - servletConfig
  page - Object
  pageContext - PageContext
  Exception - Throwable
  request - HttpServletRequest
  response - HttpServletResponse
  
 --%>
 
  <form action="">
  
   Enter Name : <input type="text" name="fname">
   <input type="submit" name="click" value="Click Me">
  
  </form>

  <%
  
  if(request.getParameter("click") !=null ){
	  
	  out.print("Hello " + request.getParameter("fname"));
  }
  
  %>

<%@include file="footer.html" %>

</body>
</html>