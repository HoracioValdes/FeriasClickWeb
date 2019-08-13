<%-- 
    Document   : listaTotalesRepar
    Created on : 26-may-2019, 20:16:51
    Author     : DAvil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="cl.model.totalesReparto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOtotalReparto"%>
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
        <title>Reporte de despachos</title>
    </head>
    <body>
   
      <div class="col s12">
            
          <jsp:include page="navRepartidor.jsp" />
         </div>  
         <h3>Reporte de despachos</h3>
     <%
      //Atributo para obtener cantidad repartos realizados
      int cant;
      //Atributo para obtener la suma total de los repartidos realizados
      int sumea = 0;
    DAOtotalReparto totalRep = new DAOtotalReparto();
    ArrayList <totalesReparto> listarTotalRep = totalRep.listaTotalesReparto(request.getParameter("RUT"));
    //Declaracion para sacar la canitdad de repartos realizados
    cant = listarTotalRep.size();
    //For para recorrer arraylist y sacar el monto toal recaudado por los repartos
    for (totalesReparto tr : listarTotalRep){
           sumea += tr.getMonto();
           
       } %>
    
    <table>
        <thead>
          <tr>
              <th>Suma de ganancia total de despachos: </th><td><h5><%= sumea %> </h5></td>
              <th>Cantidad de despachos: </th><td><h5><%= cant %> </h5> </td>
              
          </tr>
        </thead>

          
    <center>

           
           
         <table>
           <thead>
            <tr class="card-panel   blue-grey lighten-1" >
              <th>Fecha de reparto</th>
              <th>Monto </th>
              <th>Dirección</th>
                           
          </tr>
        </thead>
        <tbody>
<%    
    for (totalesReparto tr : listarTotalRep){
%> 
     
    
        
        
            <tr align ='center'>
                <td><%= tr.getFecha_hora_reparto()%></td>
                <td><%= tr.getMonto() %></td>
                <td><%= tr.getDireccion_despacho() %></td>
                
                
                
                
                
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
