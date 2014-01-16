<%-- 
    Document   : logout
    Created on : Jan 9, 2014, 4:27:50 PM
    Author     : vasilis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");    
session.setAttribute("UserName", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>

Bye Bye...