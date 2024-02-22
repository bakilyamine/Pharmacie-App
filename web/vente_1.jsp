
<%-- 
    Document   : Vente
    Created on : 17 juin 2021, 19:47:11
    Author     : BAKILY AMINE
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<%@page  import="java.io.*" %>
<%@page  import="javax.servlet.*" %>
<%@page  import="java.util.*" %>

 <!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Vente</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/vente.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">


</head>

<body>

  <!-- Static navbar -->
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="accueil.jsp">IDAMAD</a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="accueil.jsp">Home</a></li>
          <li><a href="about.html">About</a></li>
          <li><a href="security.html" class="smoothscroll">Se Deconnecter</a></li>
          
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>


  
    <!-- /container -->
  </div>

  
  <div class="container">
    <div class="row centered mt mb">
      <h1>Vente</h1>
      <form action="vente.jsp" method="post">
          <div class="wrapper">
	<input type="text" class="input" 
	placeholder="What are you looking for?" name="searchlive">
        <div  <input type="sumbit" class="searchbtn"><i class="fas fa-search"></i></div>
</div>
      </form>

    
    </div>
      
  </div>
 
  <div id="social">
    <div class="container">
      <div class="row centered">
          <div id="wrapper">
              <table id="keywords" cellspacing="0" cellpadding="0">
                  
    <thead>
      <tr>
          
        <th><span>Quantitée</span></th>
        <th><span>Nom Commercial</span></th>
        <th><span>Dosage</span></th>
        <th><span>PPV</span></th>
        <th><span>Operation</span></th>
      </tr>
      </thead>
  <%
      String searchlive=request.getParameter("searchlive") ;
       try
     {
         
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection cnx=null;
             cnx= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Kamyl@2011");
             Statement obs = cnx.createStatement();
             String req = "select * from ProduitPH where Nom_c like '%"+searchlive+"%' ";
             ResultSet resOb = obs.executeQuery(req); 
             
             while(resOb.next())
                 
           { 
              
           %> 
           <tbody>
           <form action="Add.jsp" method="get">
               <tr>
                   <td class="lalign"><input type="number" name="qte" min="1" max="99"></td>
        
        <td><%=resOb.getString("Nom_c")%> <%=resOb.getString("Forme")%> <br><%=resOb.getString("Dosage")%></td>
        <td><%=resOb.getString("Composant")%></td>
        <td><%=resOb.getFloat("PPV")%></td>
        <input name="PPV" type="hidden" value="<%=resOb.getFloat("PPV")%>">
        <td><input type="submit" name="ac" value="Activer"></td>
        <input name="Id_P" type="hidden" value="<%=resOb.getInt("Id_p")%>">
      </tr>
           </form>
    </tbody>
    <% 
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
     

    %>
  
  
      
     
   
  </table>
    
    
    <table id="keywords" cellspacing="0" cellpadding="0">
                  
    <thead>
      <tr>
          
        <th><span>Quantitée</span></th>
        <th><span>Nom Commercial</span></th>
        <th><span>Dosage</span></th>
        <th><span>PPV</span></th>
        <th><span>Operation</span></th>
      </tr>
      </thead>
  <%
      
       try
     {
         
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection cnx589=null;
             cnx589= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
             Statement ob = cnx589.createStatement();
             String req = "select *  from produitPH , LV where produitPH.Id_p=LV.Id_p";
             ResultSet res = ob.executeQuery(req); 
             
             while(res.next())
                 
           { 
               int Id_P=res.getInt("Id_P");
           %> 
           <tbody>
           
               <tr>
                   <td class="lalign"><a href="Supp.jsp?Id_LV=<%=res.getInt("Id_LV")%>">Supprimer</a></td>
        <td><%=res.getString("Nom_c")%> <%=res.getString("Forme")%> <br><%=res.getString("Dosage")%></td>
        <td><%=res.getString("Composant")%></td>
        <td><%=res.getFloat("PPV")%></td>
        <td><%=res.getFloat("ppvqte")%></td>
      </tr>
           
    </tbody>
    <% 
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
     

    %>
  
  
      
     
   
  </table>
 </div>
      </div>
    </div>
  </div>
    
           
           
           
          <div id="social">
    <div class="container">
      <div class="row centered">
          <style>
              .box9 {
  width: 40%;
  margin: 0 auto;
  background: rgba(255,255,255,0.2);
  padding: 35px;
  border: 2px solid #fff;
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
}

.button9 {
  font-size: 1em;
  padding: 10px;
  color: #06D85F;
  border: 2px solid #06D85F;
  border-radius: 20px/50px;
  text-decoration: none;
  cursor: pointer;
  transition: all 0.3s ease-out;
}
.button9:hover {
  background: #1abc9c;
}

.overlay9 {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay9:target {
  visibility: visible;
  opacity: 1;
}

.popup9 {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup9 h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup9 .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup9 .close:hover {
  color: #06D85F;
}
.popup9 .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box9{
    width: 70%;
  }
  .popup9{
    width: 70%;
  }
}
          </style>
 <div class="box9">
	<a class="button9" href="#popup1">Confirmer</a>
</div>

<div id="popup1" class="overlay9">
	<div class="popup9">
            <%
                try
            {
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con7=null;
            con7=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
            Statement s=con7.createStatement();
            String req75="select sum(LV.ppvqte) from ProduitPH, LV where ProduitPH.Id_P=LV.Id_P";
            ResultSet res95=s.executeQuery(req75);
            
           if(res95.next())
           {%>
            <h2>Confirmer la Vente</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			 Total Vente:     <%Float total=res95.getFloat("Sum(LV.ppvqte)");out.println(""+total);%>Dh
                         <a href="TotalAdd.jsp" >Confirmer</a>
		</div>
                         
<%           }
else { %>
            <h2>Confirmer la Vente</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			 Total Vente:      <%=res95.getFloat("Sum(PPV)")%>Dh
		</div>
                         
<%  }
            
            
            
            }
                catch(ClassNotFoundException sm1)
         {
             out.println("erreur pilote");
         }
         catch(SQLException sm2)
         {
             out.println("erreur connexion ou requette");

         }
            %>
		
	</div>
</div>
      </div>
    </div>
  </div>


      

  <div id="copyrights">
    <div class="container">
      <p>
        &copy; Copyrights <strong>IDAMADOU</strong>. All Rights Reserved
      </p>
      <div class="credits">
      
       
      </div>
    </div>
  </div> 
  
  <!-- / copyrights -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
