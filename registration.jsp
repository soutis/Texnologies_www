<%-- 
    Document   : registration
    Created on : Dec 18, 2013, 8:04:29 PM
    Author     : vasilis
--%>
<%@ page import="java.sql.*" %>


<%  request.setCharacterEncoding("UTF-8");
     
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String uname = request.getParameter("uname");    
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    int i = st.executeUpdate("insert into users(FirstName, SurName, Username, Password, email) values ('" + fname + "','" + lname + "','" + uname + "','" + pass + "','" + email + "')");
    

     if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
    
   
    
    
  
%>

  