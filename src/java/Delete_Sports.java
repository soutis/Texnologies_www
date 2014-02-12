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


/**
 *
 * @author vasilis
 */
public class Delete_Sports extends HttpServlet{
    
  public void processRequest(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      
      
       HttpSession session=request.getSession(true); 
       request.setCharacterEncoding("UTF-8");
       String id = request.getParameter("delete");
       String fname=  session.getAttribute("UserName").toString();
       
      
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
    
         int category = 4;
         int i = st.executeUpdate("delete from stickers where Id = '"+ id +"' && UserName ='"+ fname +"' && Category = '"+ category +"' ");

         response.sendRedirect("dashboard_Sports.jsp");
         
       }
      
     
      
      catch (ClassNotFoundException ex) {
              System.out.println("Delete_Sports");
              System.out.println(ex.getMessage());
              System.exit(1);
        } catch (SQLException ex) {
              System.out.println("Delete_Sports");
              System.out.println(ex.getMessage());
              System.exit(1);
      } catch (IOException ex) {
              System.out.println("Delete_Sports");
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