<%-- 
    Document   : listaTpProd
    Created on : 26-may-2019, 3:41:53
    Author     : DAvil
--%>

<%@page import="cl.model.TipoProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOtipoProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/phpThumb_generated_thumbnailico" />
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista tipo de producto</title>
       
    </head>
    <body>
        <div class="col s12">
            
                    <jsp:include page="nav.jsp" />
         </div>
        <h3>Lista de tipo de productos</h3>
        <center>
        <table class="responsive-table" >
        <thead>
            <tr class="blue-grey lighten-1" >
              <th>Id tipo producto</th>
              <th>Nombre</th>
              <th class="center-align">Acción</th>
            </tr>
        </thead>
        <tbody>
      <% 
            DAOtipoProducto tpProd = new DAOtipoProducto();
            ArrayList <TipoProducto> listatipoProd = tpProd.listartpProd();
            for (TipoProducto tp : listatipoProd) {
       %>
       <tr alialign ='center'>
           <td><%= tp.getIdTpProd() %> </td>
           <td><%= tp.getNombreTpProd() %> </td>
<!--           <td >
                    <a href="editarFer.jsp?ID_FERIA=<%= tp.getIdTpProd()%>">
                        <i  class="small material-icons" >edit</i>
                    </a>
                    
             </td>-->
                <td >
                    <a href="eliminarTpProd.jsp?ID_TIPO=<%= tp.getIdTpProd() %>">
                        <i class="small material-icons center">close</i>
                    </a>
                    
                </td>
           
       </tr>
      <%          
            }
      %> 
        </tbody>
        
      </table>
</center>
    </body>
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
