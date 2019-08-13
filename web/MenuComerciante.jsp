<%-- 
    Document   : MenuComerciante
    Created on : 26-may-2019, 11:11:00
    Author     : DAvil
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/phpThumb_generated_thumbnailico" />
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
        <title>Menu comerciante</title>
    </head>
      <body background="img/Fruit_Vegetables_Pepper_499502_2560x1600.jpg" >
        <div class="col s12">
            
            <jsp:include page="navComerciante.jsp" />
         </div>
        <div class="row">
                
            </div>
                    <h1 class="black-text"><b>Bienvenida/o: &nbsp;${sessionScope.usuario.nombre_usuario} </b></h1>
     
        
    </body>
    <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(document).ready(function() {
                M.updateTextFields();
                $(".dropdown-trigger").dropdown();
                $('select').material_select();
                $(".button-collapse").sideNav();
              });
        </script>
</html>
