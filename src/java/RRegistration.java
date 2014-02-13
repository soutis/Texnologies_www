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

import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;
import java.sql.ResultSet;


/**
 *
 * @author vasilis
 */
public class RRegistration extends HttpServlet{
    
  public void processRequest(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      
      
       HttpSession session=request.getSession(true); 
       request.setCharacterEncoding("UTF-8");
       
       
       String fname = request.getParameter("fname");
       String lname = request.getParameter("lname");
       String uname = request.getParameter("uname");    
       String pass = request.getParameter("pass");
       String email = request.getParameter("email");
      
      //  Database credentials
       String USER = "root";
       String PASS = "%so11333";
      
      
       
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      int count = 0;
      
      
      
      
      try{
         // Register JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

         // Open a connection
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8",USER,PASS);

         // Execute SQL query
         Statement st = conn.createStatement();
         
          ResultSet rs;
          
          
          rs = st.executeQuery("select * from users where UserName = '"+ uname +"' || email ='"+ email +"' ");
          
          while(rs.next()){
              count++;
          }
          
          
          if(count>0){
              response.sendRedirect("username.jsp");
          }else{
             int i;
             i = st.executeUpdate("insert into users(FirstName, SurName, UserName, Password, email) values ('" + fname + "','" + lname + "','" + uname + "','" + pass + "','" + email + "')");

             if (i > 0) {
                  response.sendRedirect("welcome.jsp");
             } else {
                  response.sendRedirect("index.jsp");
              }
          }
         
         
       }
      
     
      
      catch (ClassNotFoundException ex) {
              System.out.println("Registration Failed");
              System.out.println(ex.getMessage());
              System.exit(1);
        } catch (SQLException ex) {
              System.out.println("Registration Failed");
              System.out.println(ex.getMessage());
              System.exit(1);
      } catch (IOException ex) {
              System.out.println("Registration Failed");
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