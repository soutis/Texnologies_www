<%-- 
    Document   : dashboard
    Created on : Jan 15, 2014, 4:39:53 PM
    Author     : vasilis
--%>
<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%  
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>

You are not logged in<br/>
<a href="login_form.jsp">Please Login</a>

<%
    }else{
%>

<%  request.setCharacterEncoding("UTF-8");
    String fname=  session.getAttribute("UserName").toString();
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","%so11333");
    
    Statement st = conn.createStatement();
    
    int category = 0;
    ResultSet rs;
    rs = st.executeQuery("select * from stickers where Username = '"+ fname +"' && Category ='"+ category +"' ");
    
    while(rs.next()){
        String id = rs.getString(1);
        String sticker = rs.getString(3);
    
    
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        
        <div id="border">
             <p> <%= id %>.  <%=sticker%> </p>
        </div>
   


<%  }  %>  

       <div id="right" >
         <a href="post_sticker.jsp" class="classname" >Post</a>
        </div>
        <a href="logout.jsp" class="classname"  >Logout</a> 
        <br />


      <form action="Delete_Data" method="post">
         <input name="delete" required="" placeholder="Enter the ID post to delete" id="delete" style="width:500px;height:50px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   /> 
         <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
      </form>
       
       <br />
       <cnt>
       <div id="stick">
          <aside class="sticker pink"><h9> <a href='success.jsp'>Menu</a>  </h9></aside> 
       </div>
       </cnt>

      <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
      </div>

 </body>
 
        
</html>

<% } %>