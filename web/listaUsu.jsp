<%-- 
    Document   : listaUsu
    Created on : 21-may-2019, 0:02:21
    Author     : DAvil
--%>

<%@page import="cl.model.ComboComuna"%>
<%@page import="cl.dao.DAOFeriaLibre"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.model.Usuario"%>
<%@page import="cl.dao.DAOusuario"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla usuario</title>
    </head>
    <body>
        <div class="col s12">
            
                    <jsp:include page="nav.jsp" />
         </div>
        <h3>Tabla de usuarios</h3>
    <center>
        <table class="responsive-table " >
        <thead>
            <tr class="card-panel   blue-grey lighten-1" >
              <th>Rut</th>
              <th>Nombre</th>
              <th>Apellidos</th>
              <th>Clave</th>
              <th>Nombre Usuario</th>
              <th>Correo Electrónico</th>
              <th>Tipo</th>
              <th>Comuna</th>
              <th>Dirección</th>
              <th class="center-align">Acción</th>
              
          </tr>
        </thead>
        <tbody>
      <% 
            DAOFeriaLibre fer = new DAOFeriaLibre();
                        ArrayList <ComboComuna> listacomuna= fer.listarComuna();
            DAOusuario u = new DAOusuario();
            ArrayList <Usuario> listaUsuario = u.listarUsuario();
            for (Usuario us : listaUsuario){
        %>        
            <tr align ='center'>
                <td><%= us.getRut()%></td>
                <td><%= us.getNombre()%></td>
                <td><%= us.getApellidos() %></td>
                <td><%= us.getClave() %></td>
                <td><%= us.getNombre_usuario() %></td>
                <td><%= us.getCorreo_eletronico()%></td>
                <td><%= us.getTipo() %></td>
                <td><%= us.getComuna() %></td>
                <td><%= us.getDireccion() %></td>
                <td >
                    <a href="editarUsu.jsp?RUT=<%= us.getRut()%>">
                        <i  class="small material-icons" >edit</i>
                    </a>
                    <a href="eliminarUsu.jsp?RUT=<%= us.getRut()%>">
                        <i class="small material-icons">close</i>
                    </a>
                </td>
               
                
            </tr>
        <%  } %>
      

<!--            DAOFeriaLibre fer = new DAOFeriaLibre();
                        ArrayList <ComboComuna> listacomuna= fer.listarComuna();
            DAOusuario u = new DAOusuario();
            ArrayList <Usuario> listaUsuario = u.listarUsuario();
            for (Usuario us : listaUsuario){
                out.println("<tr align ='center'>");
                out.println("<td>"+us.getRut() +"</td>");
                out.println("<td>"+us.getNombre() +"</td>");
                out.println("<td>"+us.getApellidos()+"</td>");
                out.println("<td>"+us.getClave() +"</td>");
                out.println("<td>"+us.getNombre_usuario() +"</td>");
                out.println("<td>"+us.getCorreo_eletronico() +"</td>");
                out.println("<td>"+us.getTipo() +"</td>");
                out.println("<td>"+us.getComuna() +"</td>");
                out.println("<td>"+us.getDireccion() +"</td>");
                out.println("</td>");
            }-->
      
        
        </tbody>
        
      </table>
</center>
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
