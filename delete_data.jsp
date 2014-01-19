<%-- 
    Document   : delete_data
    Created on : Jan 18, 2014, 4:39:41 PM
    Author     : vasilis
--%>

<%@ page import="java.sql.*" %>

<%  request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("delete");
   
 
    String fname=  session.getAttribute("UserName").toString();


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    int i = st.executeUpdate("delete from stickers where Id = '"+ id +"' && UserName ='"+ fname +"' ");
    
    
    response.sendRedirect("dashboard.jsp");
    
    

%>
