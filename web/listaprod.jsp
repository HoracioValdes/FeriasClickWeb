<%-- 
    Document   : listaprod
    Created on : 21-may-2019, 4:32:59
    Author     : DAvil
--%>

<%@page import="cl.model.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOproducto"%>
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
        <title>Lista Producto</title>
    </head>
    <body>
        <div class="col s12">
            <jsp:include page="nav.jsp" />
         </div>
        <h3>Lista producto</h3>
        <center>
        <table class="responsive-table" >
        <thead>
            <tr class="blue-grey lighten-1"  >
              <th>ID producto</th>
              <th>Nombre de producto</th>
              <th>Cantidad </th>
              <th>Valorización </th>
              <th>Costo</th>
              <th>Tipo</th>
          </tr>
        </thead>
        <tbody>
      <% 
          DAOproducto prod = new DAOproducto();
          ArrayList<Producto> listaProd = prod.listaProducto();
          for (Producto p : listaProd){
                out.println("<tr align ='center'>");
                out.println("<td>"+ p.getId_Producto()+ "</td>");
                out.println("<td>"+ p.getNombre_producto()+ "</td>");
                out.println("<td>"+ p.getCantidad_producto()+ "</td>");
                out.println("<td>"+ p.getValorizacion_producto()+ "</td>");
                out.println("<td>"+ p.getCosto_producto()+ "</td>");
                out.println("<td>"+ p.getId_tipo() + "</td>");
                out.println("</tr>");
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
