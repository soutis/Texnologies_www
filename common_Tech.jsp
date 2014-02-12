<%-- 
    Document   : common_Tech
    Created on : Feb 12, 2014, 11:25:41 PM
    Author     : vasilis
--%>

<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%  request.setCharacterEncoding("UTF-8");
    
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    int category = 3;
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

    <br /><br />
    <h10> If you want your private space and add your own stickers you should <a href="login_form.jsp">sign in </a> </h10>
    <br />
    <h10> ....and if you haven't <a href="reg.jsp">Register </a> yet...Now it's the time.. </h10>
    <br />
    <h10> back to  <a href="index.jsp">categories </a> </h10>
      

      <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
      </div>

 </body>
 
        
</html>

