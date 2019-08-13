<%-- 
    Document   : registroUsu
    Created on : 20-may-2019, 14:40:29
    Author     : DAvil
--%>

<%@page import="cl.model.ComboComuna"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOFeriaLibre"%>
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
        
        <title>Registrar usuario</title>
    </head>
    <body>
        <div class="col s12">
                    <jsp:include page="nav.jsp" />
        </div>
         <h4>Registro de usuario</h4>
         <form action="nuevoUsuario" method="post" class="col s12 ">
            <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
            </div>
            <div class="row">
              <div class="input-field col s5">
                <input name="txtRut" id="" type="text"/>
                <label class="active" >Rut</label>
              </div> 
              <div class="input-field col s5">
                <input name="txtNombre" id="" type="text"/>
                <label class="active" >Nombre</label>
              </div>
            </div>
            <div class="row">
                <div class="input-field col s5">
                    <input name="txtApellido" id="" type="text"/>
                    <label class="active" >Apellido</label>
                </div>
                <div class="input-field col s5">
                    <input name="txtClave" id="" type="text"/>
                    <label class="active" >Clave</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s5">
                    <input name="txtNombreUsuario" id="" type="text"/>
                    <label class="active" >Nombre usuario</label>
                </div>
                <div class="input-field col s5">
                    <input name="txtCorreo" id="" type="text"/>
                    <label class="active" >Correo</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s5">
                    <select name="cboTipoUsu" >   
                        <option value="" disabled selected>Seleccione un tipo de usuario</option>
                        <option value="ADMINISTRADOR">ADMINISTRADOR</option>
                        <option value="COMPRADOR">COMPRADOR</option>
                        <option value="COMERCIANTE">COMERCIANTE</option>
                        <option value="REPARTIDOR">REPARTIDOR</option>
                    </select>    
                    <label  >Tipo</label>
                </div>
                <div class="input-field col s5">
                <select name="cboComuna" >   
                    <option value="" disabled selected>Seleccione una comuna</option>
                    <% DAOFeriaLibre fer = new DAOFeriaLibre();
                        ArrayList <ComboComuna> listacomuna= fer.listarComuna();
                        for(ComboComuna com : listacomuna){ %>
                    
                    
                    <option value="<%= com.getIdComuna() %>"><%= com.getNomComuna() %> </option>
                <%}%>
                </select>
                <label for="cboComuna">Comuna</label>   
              </div>
            </div>
            <div class="row">
                <div class="input-field col s5">
                    <input name="txtDireccion" id="" type="text"/>
                    <label class="active" >Dirección</label>
                </div>
                <div class="center-align">    
                    <button class="btn waves-effect waves-light" type="submit" name="action" value="registrar">Registrar
                        <i class="material-icons right">send</i></br>
                    </button>
                </div>                              
            </div>
    <!--            <div class="red-text center-align">
                        <p class="flow-text">${requestScope.msg}</p>
                </div>-->
        </form>
      
       
    </body>
<!--     <!--Import jQuery before materialize.js-->
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
