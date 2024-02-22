/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BAKILY AMINE
 */
@WebServlet(urlPatterns = {"/PWDF"})
public class PWDF extends HttpServlet {

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
            String login=request.getParameter("login") ;
            String QS=request.getParameter("QS") ;
            String RS=request.getParameter("RS") ;
            String RC=request.getParameter("RC") ;
            try{
         
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection cnx2=null;
             cnx2= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
             Statement obs = cnx2.createStatement();
             String req5 = "select * from utilisateurs where LOGIN='"+login+"' and QS='"+QS+"' and RS='"+RS+"' and RC='"+RC+"' ";
             ResultSet resOb5 = obs.executeQuery(req5); 
             
             if(resOb5.next())
             {
                 
             response.sendRedirect("NPWD.html");
             }
             else
             {
                 response.sendRedirect("PWDFVF.html");
                 
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
