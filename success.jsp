<%-- 
    Document   : success
    Created on : Jan 9, 2014, 4:24:14 PM
    Author     : vasilis
--%>

<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%  request.setCharacterEncoding("UTF-8");
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        

        <p>You are not logged in<p>
        
        <p> Please Login Here <a href='login_form.jsp'>Go to Login</a> </p>
       
       
    </body>
</html>

<%} else {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        

        <p>Welcome <%=session.getAttribute("UserName")%></p>
          
        <h1> <a href='dashboard.jsp'> Check your dashboard </a>  </h1>    
        <h1> <a href='post_sticker.jsp'>Post a sticker </a>    </h1>    
        <p><a href='logout.jsp'>Log out</a> </p>
       
       
    </body>
</html>

<%
    }
%>