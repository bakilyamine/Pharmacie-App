<%-- 
    Document   : NEWMDP
    Created on : 10 juin 2021, 03:07:28
    Author     : BAKILY AMINE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NEWPWD</title>
        <link rel="stylesheet" href="css/security.css" media="screen" type="text/css" />
    </head>
    <body>
         <div class="container">

             <div id="login">
        <form action="updatepwd" method="post">

          <fieldset class="clearfix">
              <p>le mots de passe n'est pas identique veillez reesayer</p>
            <p><span class="fontawesome-user"></span><input type="text" value="Nouveau mots de passe " name="npwd" ></p> <!-- JS because of IE support; better: placeholder="Username" -->
            <p><span class="fontawesome-user"></span><input type="text" value="confirmer le Nouveau mots de passe " name="pwdc" ></p>
            <p><input type="submit" value="modifier"></p>

          </fieldset>

        </form>
             </div>
         </div>
    </body>
</html>


