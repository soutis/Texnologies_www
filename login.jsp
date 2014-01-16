<%-- 
    Document   : login
    Created on : Jan 9, 2014, 4:17:43 PM
    Author     : vasilis
--%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");   
    String pwd = request.getParameter("pass");
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users_base","root","");
    
    Statement st = conn.createStatement();
    
    
    ResultSet rs;
    rs = st.executeQuery("select * from users where UserName='" + userid + "' and Password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("UserName", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        
        
    %>    
    
    <html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        <p> Invalid password.Try again <a href='login_form.jsp'>Go to Login</a> </p>
    </body>
</html>
        
  <%  } %>
%>

