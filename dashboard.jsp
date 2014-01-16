<%-- 
    Document   : dashboard
    Created on : Jan 15, 2014, 4:39:53 PM
    Author     : vasilis
--%>
<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%
    String fname=  session.getAttribute("UserName").toString();
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users_base","root","");
    
    Statement st = conn.createStatement();
    
    
    ResultSet rs;
    rs = st.executeQuery("select * from stickers where UserName='" +  fname + "'");
    
    while(rs.next()){
        String sticker = rs.getString(2);
    
    
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        <p> <%=sticker%>  </p>
    </body>
</html>


<%  }  %>

<p> <a href='post_sticker.jsp'>Post a sticker </a>    </p>
<p> <a href='logout.jsp'>Log out</a>  </p>
<a class="classname">Delete</a>
