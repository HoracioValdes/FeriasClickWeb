<%-- 
    Document   : ingresarProd
    Created on : 26-may-2019, 3:19:42
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
        
        <title>Registrar tipo de ferias</title>
    </head>
    <body>
        <div class="col s12">
                    <jsp:include page="nav.jsp" />
        </div>
        <h4>Registro tipo de producto</h4>
        <form action="ingresarTpProd" method="post" class="col s12">
            <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
            </div>
            <div class="row">
              <div class="input-field col s5">
                <input name="txtNomTpProd" id="" type="text"/>
                <label class="active" >Nombre tipo de producto</label>
              </div> 
            </div>
            <div class="row">
                <div class="center-align">    
                    <button class="btn waves-effect waves-light" type="submit" name="action" value="registrar">Registrar
                        <i class="material-icons right">send</i></br>
                    </button>
                </div>
            </div>
        </form>
    </body>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
    
            $(document).ready(function() {
                $('select').formSelect();
                M.updateTextFields();
                $(".dropdown-trigger").dropdown();
                $('select').material_select();
                $(".button-collapse").sideNav();
                
              });
   
        </script>
</html>
