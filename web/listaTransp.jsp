<%-- 
    Document   : listaTransp
    Created on : 21-may-2019, 3:58:31
    Author     : DAvil
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="cl.model.Transporte"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOtransporte"%>
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
        <title>Lista Transporte</title>
        
    </head>
    <body>
        <div class="col s12">
            <jsp:include page="nav.jsp" />
         </div>
        <h3>Lista transporte</h3>
        <center>
        <table class="responsive-table" >
        <thead>
            <tr class="blue-grey lighten-1" >
              <th>Patente</th>
              <th>Tipo de transporte</th>
          </tr>
        </thead>
        <tbody>
      <% 
            DAOtransporte trans  = new DAOtransporte();
            ArrayList <Transporte> listaTransp = trans.listaTransporte();
            for (Transporte t : listaTransp){
                out.println("<tr align ='center'>");
                out.println("<td>"+ t.getPatente()+ "</td>");
                out.println("<td>"+ t.getTipo_transporte()+ "</td>");
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
