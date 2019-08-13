<%-- 
    Document   : index
    Created on : 19-may-2019, 21:08:04
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
        <title>Ferias Click</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <title>JSP Page</title>-->
        <script src="js/main.js"></script>
<!--    <img   src="img/mercado-europeos-frutas-verduras.jpg">    -->
    </head>
    <body background="img/mercado-europeos-frutas-verduras.jpg" >
           
       
      <div class="container" >
          
            <div class="row">
                <nav>
                    <div class="nav-wrapper center blue-grey white-text darken-1">
                        <h2><b>Ferias Click</b></h2>
<!--                        <a href="index.jsp" class="brand-logo">&nbsp;<img class="responsive-img" src="img/LOGO BLANCO SOL Y PORTUARIOS.png" width="120px" style="margin-top: 15px"></a>-->
                    </div>
                </nav>
            </div>

            <div class="row">
                <div class="col s10 offset-s1">
<!--                    <h2><b>Feria Click</b></h2>-->
                    <b class="flow-text white-text s5" align="justify">Ferias Click es un aplicativo móvil que va orientado a la agilización de los procesos de comercialización de las ferias libres.</b>
                </div>
            </div>
<!--            <div class="col s12">
                <h4 class="center-align"><b>Ingreso</b></h4>
            </div>-->
            <div class="col s6 offset-s3">
                <div class="row">
                    <form class="col s8 offset-s2 card-panel z-depth-5 transparent"
                          action="iniciar" method="post" id="formingresar">
                        <div class="col s12">
                            <h4 class="center-align"><b>Ingreso</b></h4>
                        </div>
                        <div class="row">
                            <div class="input-field col s6 black-text">
                                <i class="material-icons  prefix">account_circle</i>
                                <input id="icon_prefix" type="text" class="validate black-text"
                                       name="txtNom_usuario" id="txtNom_usuario" />
                                <label for="icon_prefix" class="black-text"><h6><b>Usuario</b></h6></label>
                            </div>
                            <div class="input-field col s6 black-text ">
                                <i class="material-icons  prefix">lock_outline</i>
                                <input id="icon_pass" type="password" class="validate black-text"
                                       name="txtClave" id="txtClave"/>
                                <label for="icon_pass" class="black-text"  ><h6><b>Clave</b></h6></label>
                            </div>
                            <div class="center-align">    
                                <button class="btn waves-effect waves-light" type="submit" name="action" id="btninciar" >Enviar
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>    
                        </div>
                    </form>

                </div>
                <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
                </div>
            </div>

            <footer class="page-footer blue-grey darken-1">
                <div class="container">
                    <div class="row">
                        <div class="col l6 s12">
                            <h5 class="white-text"></h5>
                            <p class="grey-text text-lighten-4"><a href="mailto:contacto@fundacionsol.cl" style="color: #ffff00"></a></p>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        © 2019 FERIAS CLICK
                        <a class="grey-text text-lighten-4 right">Página de administración Ferias Click</a>
                    </div>
                </div>
            </footer>
        </div>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(function () {

                $(".button-collapse").sideNav();
            });
        </script>
    </body>
    
</html>
