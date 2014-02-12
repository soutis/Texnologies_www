<%-- 
    Document   : post_sticker
    Created on : Jan 15, 2014, 5:12:27 PM
    Author     : vasilis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        
    </head>
    <body>
         <form action="Post_Data" method="post">
            <p>  Add your sticker to the category you want below:  </p> <br />
            <input name="comments" required="" placeholder="Post your private sticker of 200 max characters" id="comments" style="width:700px;height:80px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   /> 
            <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
        
        <br />
        <form action="Post_News" method="post">
            <input name="comments" required="" placeholder="Post your News sticker of 200 max characters" id="comments" style="width:700px;height:80px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   />
            <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
        
        <br />
        <form action="Post_Social" method="post">
            <input name="comments" required="" placeholder="Post your Social sticker of 200 max characters" id="comments" style="width:700px;height:80px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   />
            <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
        
        <br />
        <form action="Post_Tech" method="post">
            <input name="comments" required="" placeholder="Post your Tech sticker of 200 max characters" id="comments" style="width:700px;height:80px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   />
            <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
        
        <br />
        <form action="Post_Sports" method="post">
            <input name="comments" required="" placeholder="Post your Sports sticker of 200 max characters" id="comments" style="width:700px;height:80px;background-color:#D0F18F;color:#000000;font:24px/30px cursive;"   />
            <br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
        
        <h1> <a href='success.jsp'> Return to menu </a>  </h1>
        
       <div id="footer">
            <h8>Web Designed by Vasilis Soutis  &copy 2014 </h8>
       </div>
    </body>
</html>
