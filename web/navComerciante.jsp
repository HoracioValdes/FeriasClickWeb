<%-- 
    Document   : navComerciante
    Created on : 26-may-2019, 4:30:34
    Author     : DAvil
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class=" deep-orange darken-1" >
  <div class="nav-wrapper   deep-orange darken-1">
    <a class="brand-logo  center   deep-orange darken-1">Ferias Click</a>
<!--    Este es para definir las paginas-->
    <ul id="nav-mobile" class="left   deep-orange darken-1 hide-on-med-and-down">
      <li><a class="dropdown-trigger" data-target="dropdown1">Reportes de ventas<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="right-align" href="cerrar.jsp"><b>Salir</b></a></li>
    </ul>
<!--    definimos el nombre y el tipo de usuario-->
    <ul class="right-align ">
        Usuario:  &nbsp;${sessionScope.usuario.nombre_usuario} de tipo: &nbsp;${sessionScope.usuario.tipo} 
    </ul>
<!--    Para poner las opciones del menu, para que conecten depende de la ID-->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="listaTotalesCom.jsp?RUT=${sessionScope.usuario.rut}">Ventas totales</a></li>
    </ul>
  </div>
</nav>
