<%-- 
    Document   : success
    Created on : Jan 9, 2014, 4:24:14 PM
    Author     : vasilis
--%>

<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%  request.setCharacterEncoding("UTF-8");
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
   
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        

        <p>You are not logged in<p>
        
        <p> Please Login Here <a href='login_form.jsp'>Go to Login</a> </p>
       
       
    </body>
</html>

<%} else {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
    </head>
    <body>
        

        <p>  Welcome <%=session.getAttribute("UserName")%></p>
        
        
<script LANGUAGE="JavaScript">
function GetCookie (name) { 
var arg = name + "="; 
var alen = arg.length; 
var clen = document.cookie.length; 
var i = 0; 
while (i < clen) {
var j = i + alen;   
if (document.cookie.substring(i, j) == arg)     
return getCookieVal (j);   
i = document.cookie.indexOf(" ", i) + 1;   
if (i == 0) break;  
} 
return null;
}
function SetCookie (name, value) { 
var argv = SetCookie.arguments; 
var argc = SetCookie.arguments.length; 
var expires = (argc > 2) ? argv[2] : null; 
var path = (argc > 3) ? argv[3] : null; 
var domain = (argc > 4) ? argv[4] : null; 
var secure = (argc > 5) ? argv[5] : false; 
document.cookie = name + "=" + escape (value) +
((expires == null) ? "" : ("; expires=" + expires.toGMTString())) +
((path == null) ? "" : ("; path=" + path)) + 
((domain == null) ? "" : ("; domain=" + domain)) +   
((secure == true) ? "; secure" : "");
}
function DeleteCookie (name) { 
var exp = new Date(); 
exp.setTime (exp.getTime() - 1);  
var cval = GetCookie (name); 
document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString();
}
var expDays = 30;
var exp = new Date();
exp.setTime(exp.getTime() + (expDays*24*60*60*1000));
function amt(){
var count = GetCookie('count')
if(count == null) {
SetCookie('count','1')
return 1
}
else {
var newcount = parseInt(count) + 1;
DeleteCookie('count')
SetCookie('count',newcount,exp)
return count
   }
}
function getCookieVal(offset) {
var endstr = document.cookie.indexOf (";", offset);
if (endstr == -1)
endstr = document.cookie.length;
return unescape(document.cookie.substring(offset, endstr));
}
// End -->
</script>

<p>
<script LANGUAGE="JavaScript">
<!-- Begin
document.write("  You are here for <b>" + amt() + " times.");
// End -->
</script> 
</p>
 
        <input type="button" onclick="DeleteCookie('count')" value="Reset Cookie Counter"/>
        
        <br /><br />
         
       <div id="right" >
         <a href="post_sticker.jsp" class="classname" >Post</a>
        </div>
        <a href="logout.jsp" class="classname"  >Logout</a> 
            
       
        <cnt>
        <div id="stick" >
           <aside class="sticker pink"><h9> Menu </h9></aside> 
        </div>
        </cnt>
    
            
        <div id="stick">
            
          <aside class="sticker yellow"><h9> <a href='dashboard.jsp'>Private</a>  </h9></aside>
          <aside class="sticker cyan"><h9> <a href='dashboard_News.jsp'>News</a>  </h9></aside>
          <aside class="sticker green"><h9> <a href='dashboard_Social.jsp'>Social</a>  </h9></aside>
          <aside class="sticker yellow"><h9> <a href='dashboard_Tech.jsp'>Tech</a>  </h9></aside>
          <aside class="sticker pink"><h9> <a href='dashboard_Sports.jsp'>Sports</a>  </h9></aside>
          
          
       </div>
        
        
         
           
        
        
        
        <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
        </div>
       
       
    </body>
   
 



</html>

<%
    }
%>