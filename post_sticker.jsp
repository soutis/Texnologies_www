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
         <form action="post_data.jsp" method="post">
            <p>  Add your sticker below:  </p> <br />
        <textarea name="comments" id="comments" style="width:700px;height:200px;background-color:#D0F18F;color:#53760D;font:24px/30px cursive;scrollbar-base-color:#638E0D;">
             Hey... post your sticker of max size of 100 characters....
        </textarea><br />
        <input type="submit" value="Submit" style="background-color:#53760D;color:#D0F18F;" />
       </form>
    </body>
</html>
