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
         <h3>Reporte despacho mensuales</h3>
         
         <form action="MensualesRep" method="post" class="col s12 ">
            <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
            </div>
            <div class="row">
              <div class="input-field col s5">
                <input name="txtfechaDesde" id="" type="text"/>
                <label class="active" >Fecha desde</label>
              </div> 
              <div class="input-field col s5">
                <input name="txtfechaHasta" id="" type="text"/>
               
                <label class="active" >Fecha hasta</label>
                
              </div>
            </div>
            <div class="center-align">    
                    <button  class="btn waves-effect waves-light" type="submit" name="action" value="mostrarLista">Asignar fechas
                        <i  class="material-icons right">send</i></br>
                    </button>
                </div> 
         </form>    
  </body>
    <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(document).ready(function() {
//                
                M.updateTextFields(),
                $(".dropdown-trigger").dropdown(),
                $('.select').materialelect(),
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
