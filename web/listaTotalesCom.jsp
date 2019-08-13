<%-- 
    Document   : listaTotalesCom
    Created on : 26-may-2019, 15:52:06
    Author     : DAvil
--%>

<%@page import="cl.dao.DAOtotalComer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.model.CompTotalesComer"%>
<%@page import="cl.dao.DAOproducto"%>
<%@page import="cl.dao.Conectar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Reporte ventas totales</title>
    </head>
    <body>
      
      <div class="col s12">
            
            <jsp:include page="navComerciante.jsp" />
         </div>  
         <h3>Reporte de ventas</h3>
  <%
      int cant;
      int suma = 0;
    DAOtotalComer totalComp = new DAOtotalComer();
    ArrayList <CompTotalesComer> listartotalComer = totalComp.listaTotalesComer(request.getParameter("RUT"));
    cant = listartotalComer.size();
     for (CompTotalesComer tc : listartotalComer){
           suma += tc.getMonto();
    } %>
    
      <table>
        <thead>
          <tr>
              <th>Suma total de ventas: </th><td><h5><%= suma %> </h5></td>
              <th>Cantidad de ventas: </th><td><h5><%= cant %> </h5> </td>
          </tr>
        </thead>  
        
       <center>   
         <table>
           <thead>
            <tr class="card-panel   blue-grey lighten-1" >
              <th>Nombre del producto</th>
              <th>Monto de venta</th>
              <th>Fecha de venta</th>
                           
          </tr>
        </thead>
        <tbody>
      
   <%
    for (CompTotalesComer ctc : listartotalComer){
%>    
     
    
        
        
            <tr align ='center'>
                <td><%= ctc.getNombreProd() %></td>
                <td><%= ctc.getMonto() %></td>
                <td><%= ctc.getFecha_hora_compra() %></td>
                
            </tr>
    <%
     }   
     %>     
                
   
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
