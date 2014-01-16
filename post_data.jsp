<%-- 
    Document   : post_data
    Created on : Jan 15, 2014, 5:19:03 PM
    Author     : vasilis
--%>

<%@ page import="java.sql.*" %>

<%
    String sticker = request.getParameter("comments");
 
    String fname=  session.getAttribute("UserName").toString();


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users_base","root","");
    
    Statement st = conn.createStatement();
    
    int i = st.executeUpdate("insert into stickers(Username, Text) values ('" + fname + "','" + sticker + "')");
    
    if (i > 0) {
        response.sendRedirect("dashboard.jsp");
    }

%>