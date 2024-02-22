<%-- 
    Document   : EDS
    Created on : 11 juin 2021, 00:38:26
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
  <link href="css/EDS.css" rel="stylesheet">
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
        <a class="navbar-brand" href="accueil.html">IDAMAD</a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="accueil.html">Home</a></li>
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
      <h1>État des stocks</h1>
      <form action="EDS.jsp" method="post">
          <div class="wrapper">
	<input type="text" class="input" 
	placeholder="What are you looking for?" name="searchlive">
        <div  href="EDS.jsp
              "class="searchbtn"><i class="fas fa-search"></i></div>
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
        <th><span>Nom Commercial</span></th>
        <th><span>Dosage</span></th>
        <th><span>Type</span></th>
        <th><span>PPV</span></th>
        <th><span>Quantité</span></th>
      </tr>
      </thead>
  <%
      String searchlive=request.getParameter("searchlive") ;
       try
     {
         
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection cnx=null;
             cnx= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Lahlou1996.");
             Statement obs = cnx.createStatement();
             String req = "select * from Commandes where  Nom_c='"+searchlive+"' ";
             ResultSet resOb = obs.executeQuery(req); 
             
             while(resOb.next())
           {
           %> <tbody>
      <tr>
        <td class="lalign">   <%=resOb.getString("Nom_c")%></td>
        <td><%=resOb.getInt("dosage")%>Mg</td>
        <td><%=resOb.getString("conditionnement")%></td>
        <td><%=resOb.getFloat("PPV")%>Dh</td>
        <td><%=resOb.getInt("Qte")%></td>
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
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="EDS.jsp"><img src="img/portfolio/folio01.png" class="img-responsive"></a>
      </div>
 </div>
          <div id="social">
    <div class="container">
      <div class="row centered">
        

      </div>
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
