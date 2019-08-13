<%-- 
    Document   : listaFeria
    Created on : 21-may-2019, 3:30:18
    Author     : DAvil
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="cl.model.FeriaLibre"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOFeriaLibre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/phpThumb_generated_thumbnailico" />
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Feria</title>
       
    </head>
    <body>
        <div class="col s12">
            
                    <jsp:include page="nav.jsp" />
         </div>
        <h3>Lista ferias</h3>
        <center>
        <table class="responsive-table" >
        <thead>
            <tr class="blue-grey lighten-1" >
              <th>Id feria</th>
              <th>Nombre feria</th>
              <th>Comuna</th>
              <th>Dirección</th>
              <th class="center-align">Acción</th>
          </tr>
        </thead>
        <tbody>
      <% 
            DAOFeriaLibre fer = new DAOFeriaLibre();
            ArrayList <FeriaLibre> listaFeria = fer.listarFeria();
            for (FeriaLibre f : listaFeria) {
       %>
       <tr alialign ='center'>
           <td><%= f.getIdFeria() %> </td>
           <td><%= f.getNombreFeria() %> </td>
           <td><%= f.getComunaFeria() %> </td>
           <td><%= f.getDireccionFeria() %> </td>
           <td >
                    <a href="editarFer.jsp?ID_FERIA=<%= f.getIdFeria()%>">
                        <i  class="small material-icons" >edit</i>
                    </a>
                    <a href="eliminarFer.jsp?ID_FERIA=<%= f.getIdFeria() %>">
                        <i class="small material-icons">close</i>
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
