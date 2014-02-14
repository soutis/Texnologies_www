<%-- 
    Document   : search
    Created on : Feb 14, 2014, 12:44:56 PM
    Author     : vasilis
--%>

<%@ page import="java.sql.*" %>

<%  request.setCharacterEncoding("UTF-8");
    String search = request.getParameter("search");
    
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    String category=null;
    ResultSet rs;
    rs = st.executeQuery("select * from stickers where (Username ='"+ search +"') && (Category ='"+ 1 +"' || Category ='"+ 2 +"' || Category ='"+ 3 +"' || Category ='"+ 4 +"' )");
    if(rs !=null){
    while(rs.next()){
        String id = rs.getString(1);
        String fname = rs.getString(2);
        String sticker = rs.getString(3);
        String cat = rs.getString(4);
        if(cat.equals("1")){
            category="News";
        }
        if(cat.equals("2")){
            category="Social";
        }
        if(cat.equals("3")){
            category="Tech";
        }
        if(cat.equals("4")){
            category="Sports";
        }
    
 %>

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        
        <div id="border">
             <p> <%= id %>.  <%=sticker%> by <%=fname%> in category <%=category%></p>
        </div>
   
 <%  } } %>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
 
 <div id="border">
          <p>back to  <a href="index.jsp">main page </a></p>
 </div>




 <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
      </div>

 </body>
 
        
</html>