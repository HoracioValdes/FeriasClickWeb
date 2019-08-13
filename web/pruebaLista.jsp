<%-- 
    Document   : listaTotalesRepar
    Created on : 26-may-2019, 20:16:51
    Author     : DAvil
--%>

<%@page import="cl.model.MensualesRepar"%>
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
         <h3>Reporte despachos mensuales</h3>
                
         <%
//             //Atributo para obtener cantidad repartos realizados
//             int cant;
//             //Atributo para obtener la suma total de los repartidos realizados
//             int sumea = 0;
//             DAOtotalReparto MensualRep = new DAOtotalReparto();
//             ArrayList<MensualesRepar> listaMenRep = MensualRep.listaMenRep(request.getParameter("RUT"), request.getParameter("fechaDesde"), request.getParameter("fechaHasta"));
//             //Declaracion para sacar la canitdad de repartos realizados
//             cant = listaMenRep.size();
//             //For para recorrer arraylist y sacar el monto toal recaudado por los repartos
//             for (MensualesRepar tr : listaMenRep) {
//                 sumea += tr.getMonto();

//         }%>
    
       <table class="action">
        <thead>
          <tr>
              <!--<th>Suma total de reparto: </th><td><h5>%= // sumea %> </h5></td>-->
              <!--<th>Cantidad de repartos: </th><td><h5>% // cant %> </h5> </td>-->
              
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
//    for (MensualesRepar tr : listaMenRep){
%> 
        <tbody>
                       
    
                        <c:forEach items="${requestScope.lista}" var="c">
                           
                            <tr align ='center'>
                                <td>${c.fecha_hora_despacho}</td>
                                <td>${c.monto}</td>
                                <td>${c.direccion_despacho}</td>
                                
                            </tr>
                        </c:forEach>
        
            
    <%
      
     
      
//     }   
//     
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
//                
                M.updateTextFields(),
                $(".dropdown-trigger").dropdown(),
                $('select').material_select(),
                $(".button-collapse").sideNav(),
                $('.datepicker').datepicker({
                        format: 'yyyy-mm-dd',
                        //Fecha minima
                        minDate: new Date(2019-01-31)
                });
                
              });
//              $(document).ready(function() {
//////                
////                M.updateTextFields(),
////                $(".dropdown-trigger").dropdown(),
////                $('select').material_select(),
//                $(".button-collapse").sideNav();
//              
//                
//              });
              
        </script>
</html>