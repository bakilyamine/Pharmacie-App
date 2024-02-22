<%-- 
    Document   : MDPOUBLIE
    Created on : 10 juin 2021, 02:57:02
    Author     : BAKILY AMINE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification du Mots de passe</title>
        <link rel="stylesheet" href="css/security.css" media="screen" type="text/css" />
    </head>
    <body>
        <div class="container">

            <div id="login">
        <form action="loginmodifServlet" method="post">

          <fieldset class="clearfix">

            <p><span class="fontawesome-user"></span><input type="text" value="login" name="login" ></p> <!-- JS because of IE support; better: placeholder="Username" -->
            <p><span class="fontawesome-lock"></span><input type="text"  value="Question secrète" name="QS" ></p> <!-- JS because of IE support; better: placeholder="Password" -->
            <p><span class="fontawesome-lock"></span><input type="text"  value="reponse  secrète" name="RS" ></p> 
            <p><input type="submit" value="Verifier"></p>

          </fieldset>

        </form>
                </div>
            </div>
    </body>
</html>
