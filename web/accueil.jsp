<%-- 
    Document   : accueil
    Created on : 11 juin 2021, 20:53:52
    Author     : BAKILY AMINE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page  import="java.sql.*" %>
<%@page  import="java.io.*" %>
<%@page  import="javax.servlet.*" %>
<%@page  import="java.util.*" %>
<% String Nom5 =request.getParameter("Nom6");
             String Prenom5 =request.getParameter("Prenom6");
             String PH=request.getParameter("PH") ;%>
             
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Accueil</title>
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
  <link href="css/acceuil.css" rel="stylesheet">
</head>

<body>

  <!-- Static navbar -->
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">IDAMADOU</span>
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
          <li><a href="Login.html" class="smoothscroll">Se Deconnecter</a></li>
          
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>


  <div id="headerwrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
          <h4>HELLO </h4>
          <h1>
              <% 
                  
            String attribut = (String) request.getAttribute("test");
            String attribut2 = (String) request.getAttribute("test2");
                out.println(attribut+" "+attribut2);
                      
              %>
          </h1>
          <h4>Pharmacie  <% 
                  
             String attribut3 = (String) request.getAttribute("test3");
              out.println(attribut3);
                      
             
              %></h4>
        </div>
      </div>
    </div>
    <!-- /container -->
  </div>

  <section id="works"></section>
  <div class="container">
    <div class="row centered mt mb">
      <h1>DASHBOARD</h1>

      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="EDS.jsp"><img src="img/portfolio/folio01.png" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="vente.jsp"><img src="img/portfolio/folio02.png" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="Commande.jsp"><img src="img/portfolio/folio03.png" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="img/portfolio/folio04.png" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="img/portfolio/folio05.png" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="img/portfolio/folio06.png" class="img-responsive"></a>
      </div>
    </div>
  </div>

  <div id="social">
    <div class="container">
      <div class="row centered">
        

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

