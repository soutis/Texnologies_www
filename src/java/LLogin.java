/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;


/**
 *
 * @author vasilis
 */
public class LLogin extends HttpServlet{
    
  public void processRequest(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      
      
       HttpSession session=request.getSession(true); 
       request.setCharacterEncoding("UTF-8");
       String userid = request.getParameter("uname");   
       String pwd = request.getParameter("pass");
      
      //  Database credentials
       String USER = "root";
       String PASS = "%so11333";
      
      
       
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
     
      
      try{
         // Register JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

         // Open a connection
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8",USER,PASS);

         // Execute SQL query
         Statement st = conn.createStatement();
    
  
         ResultSet rs;
         rs = st.executeQuery("select * from users where UserName='" + userid + "' and Password='" + pwd + "'");

         // Extract data from result 
         if (rs.next()) {
            session.setAttribute("UserName", userid);
            response.sendRedirect("success.jsp");
         }
         else {
            response.sendRedirect("login_failed.jsp");
         }
         
       }
      
     
      
      catch (ClassNotFoundException ex) {
              System.out.println("Login Failed");
              System.out.println(ex.getMessage());
              System.exit(1);
        } catch (SQLException ex) {
              System.out.println("Login Failed");
              System.out.println(ex.getMessage());
              System.exit(1);
      } catch (IOException ex) {
              System.out.println("Login Failed");
              System.out.println(ex.getMessage());
              System.exit(1);
      }
      
      
      
      
     
      
      
   }
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }
} 