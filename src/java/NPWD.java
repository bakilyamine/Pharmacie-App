/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author BAKILY AMINE
 */
@WebServlet(urlPatterns = {"/NPWD"})
public class NPWD extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String npwd=request.getParameter("pwd") ;
            String pwdc=request.getParameter("pwd2");
            String login=request.getParameter("login") ;
            if ("npwd".equals("pwdc"))
            {
                try 
                    
                { Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection cnx=null;
             cnx= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
             Statement obs = cnx.createStatement();
             String req2 = "update utilisateurs set Pwd='"+npwd+"' where LOGIN='"+login+"' ";
             ResultSet resOb = obs.executeQuery(req2); 
             if(resOb.next())
             {
                  javax.servlet.ServletContext se = request.getServletContext();
                //communication entre servlet au niveau du serveur web 
                
                RequestDispatcher dis = se.getRequestDispatcher("/Login.html");
                //redirection au chemain predifini
                
                dis.forward(request, response);
                // transfert des donnée entre servlet 
                 
             }
             
                }
             catch(ClassNotFoundException e1)
         {
             out.println("erreur pilote");
         }
         catch(SQLException e2)
         {
             out.println("erreur connexion ou requette");

         }
    }
                else
             {
                 response.sendRedirect("NPWD2.html");
                 
             }
             
             
             
             
             
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
