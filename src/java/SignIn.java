/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
@WebServlet(urlPatterns = {"/SignIn"})
public class SignIn extends HttpServlet {

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
            String pwd=request.getParameter("pwd") ;
             try{
         
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection co=null;
             co= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
             Statement obs = co.createStatement();
             String req = "select * from utilisateurs where LOGIN='"+login+"' and Pwd='"+pwd+"' ";
             ResultSet resOb = obs.executeQuery(req); 
             
       if(resOb.next())
             { 
             
             String Nom6 = resOb.getString("Nom");
             String Prenom6 = resOb.getString("Prenom");
             String PH = resOb.getString("Pharmacie");
              
             	
	request.setAttribute( "test", Nom6 );
	request.setAttribute( "test2", Prenom6 );
        request.setAttribute( "test3", PH );
                 javax.servlet.ServletContext se = request.getServletContext();
                //communication entre servlet au niveau du serveur web 
                
                RequestDispatcher dis = se.getRequestDispatcher("/accueil.jsp");
                //redirection au chemain predifini
                
                dis.forward(request, response);
                // transfert des donnée entre servlet 
                 
             }
             else
             {
                 response.sendRedirect("LoginFail.html");
                 
             }
            }
           catch(ClassNotFoundException LOG)
         {
             out.println("erreur pilote");
         }
         catch(SQLException LOG)
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
