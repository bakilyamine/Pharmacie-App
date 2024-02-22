<%-- 
    Document   : supp
    Created on : 20 juin 2021, 16:59:54
    Author     : BAKILY AMINE
--%>

<%@page  import="java.sql.*" %>
<%!int Id_Lv;%>



    <%
        int Id_Lv=Integer.parseInt(request.getParameter("Id_Lv"));
       
     
      
  
    
        
        
            try
            {
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection co2566=null;
            co2566=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Kamyl@2011");
            Statement s=co2566.createStatement();
            String req="delete LV where Id_LV='"+Id_Lv+"'";
            ResultSet res=s.executeQuery(req);
             ServletContext ct55 = request.getServletContext();
                //communication entre servlet au niveau du serveur web 
                RequestDispatcher dis55 = ct55.getRequestDispatcher("/vente.jsp");
                //redirection au chemain predifini
                dis55.forward(request, response);
                // transfert des donnée entre servlet 
                
}
catch(ClassNotFoundException ee)
{
out.println("err pilote");
}
catch(SQLException ff)
{
out.println("err conn");
}
    
    %>