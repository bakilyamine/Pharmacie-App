<%-- 
    Document   : Add
    Created on : 20 juin 2021, 16:37:27
    Author     : BAKILY AMINE
--%>


<%@page  import="java.sql.*" %>
<%!int Id_P;%>
<%!float ppv;%>
<%!int qtee;%>
<%!float ppvqte;%>




    <%  
        int Id_P=Integer.parseInt(request.getParameter("Id_P"));
        int qtee=Integer.parseInt(request.getParameter("qte"));
        float ppv = Float.parseFloat(request.getParameter("PPV"));
        ppvqte=qtee*ppv;
        
        out.println(""+qtee);out.println(""+ppv);out.println(""+qtee);
        
        
        
    
       
            try
            {
           
                Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection co2566=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Kamyl2011");       
            Statement s=co2566.createStatement();
            String req="Insert into LV (12,1176,01) values ('"+qtee+"','"+ppvqte+"','"+Id_P+"') ";
            ResultSet res=s.executeQuery(req);
            
             ServletContext ct55 = request.getServletContext();
                //communication entre servlet au niveau du serveur web 
                RequestDispatcher dis55 = ct55.getRequestDispatcher("/vente.jsp");
                //redirection au chemain predifini
                dis55.forward(request, response);
                // transfert des donnée entre servlet 
}
catch(ClassNotFoundException eet)
{
out.println("err pilote");
}
catch(SQLException fft)
{
out.println("err conn");
}
    
           
           
    %>