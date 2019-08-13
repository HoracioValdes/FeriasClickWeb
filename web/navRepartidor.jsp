<%-- 
    Document   : nav
    Created on : 20-may-2019, 15:56:37
    Author     : DAvil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="light-green darken-1" >
  <div class="nav-wrapper  light-green darken-1">
    <a href="" class="brand-logo  center  light-green darken-1">Ferias Click</a>
<!--    Este es para definir las paginas-->
    <ul id="nav-mobile" class="left  light-green darken-1 hide-on-med-and-down">
      <li><a class="dropdown-trigger" data-target="dropdown1">Reporte de reparto<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="right-align" href="cerrar.jsp"><b>Salir</b></a></li>
    </ul>
<!--    definimos el nombre y el tipo de usuario-->
    <ul  class="right-align">
    Usuario:  &nbsp;${sessionScope.usuario.nombre_usuario} de tipo: &nbsp;${sessionScope.usuario.tipo} 
    </ul>

        
<!--    Para poner las opciones del menu, para que conecten depende de la ID-->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="listaTotalesRepar.jsp?RUT=${sessionScope.usuario.rut}">Repartos totales</a></li>
        <li><a href="listaMensaulesRepar.jsp?RUT=${sessionScope.usuario.rut}">Repartos mensuales</a></li>
    </ul>
  </div>
</nav>