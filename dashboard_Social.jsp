<%-- 
    Document   : dashboard_Social
    Created on : Feb 12, 2014, 9:29:09 PM
    Author     : vasilis
--%>

<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%  request.setCharacterEncoding("UTF-8");
    
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    int category = 2;
    ResultSet rs;
    rs = st.executeQuery("select * from stickers where Category ='"+ category +"' ");
    
    while(rs.next()){
        String id = rs.getString(1);
        String fname = rs.getString(2);
        String sticker = rs.getString(3);
    
    
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        
        <p> <%= id %>.  <%=sticker%> by <%=fname%> </p>
   


<%  }  %>

       <p> <a href='post_sticker.jsp'>Post a sticker </a>    </p>
       <p> <a href='logout.jsp'>Log out</a>  </p>
       
       <form action="Delete_Social" method="post">
         <input name="delete" required="" placeholder="Enter the ID post to delete" id="delete" style="width:500px;height:50px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   /> 
         <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
      </form>


      <br />
       <h1> <a href='success.jsp'> Return to menu </a>  </h1>

      <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
      </div>

 </body>
 
        
</html>
