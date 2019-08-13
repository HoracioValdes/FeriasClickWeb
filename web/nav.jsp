<%-- 
    Document   : nav
    Created on : 20-may-2019, 15:56:37
    Author     : DAvil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="blue-grey" >
    
  <div class="nav-wrapper" blue-grey>
      
                     
    <a class="brand-logo  center blue-grey">Ferias Click</a>

  
<!--    Este es para definir las paginas-->
    <ul id="nav-mobile" class="left blue-grey hide-on-med-and-down">
      <li><a class="dropdown-trigger" data-target="dropdown1">Usuarios<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="dropdown-trigger" data-target="dropdown2">Feria<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="dropdown-trigger" data-target="dropdown4">Productos<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="dropdown-trigger" data-target="dropdown3">Recursos<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="right-align" href="cerrar.jsp"><b>Salir</b></a></li>
    </ul>
<!--    //Este es para mostrar usuario-->
    <ul id="nav-mobile" class="right-align">
        Usuario:  &nbsp;${sessionScope.usuario.nombre_usuario} de tipo: &nbsp;${sessionScope.usuario.tipo} 
    </ul>
<!--    Para poner las opciones del menu, para que conecten depende de la ID-->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="registroUsu.jsp">Registrar usuario</a></li>
        <li><a href="listaUsu.jsp">Lista usuario</a></li>
        <li class="divider"></li>
    </ul>
    <ul id="dropdown2" class="dropdown-content">
        <li><a href="RegistrarFeria.jsp">Ingresar Feria</a></li>
        <li><a href="listaFeria.jsp">Lista Feria</a></li>
    </ul>
    <ul id="dropdown3" class="dropdown-content">
        <li><a href="listaTransp.jsp">Lista de Transporte</a></li>

    </ul>
     <ul id="dropdown4" class="dropdown-content">
        <li><a href="ingTipoProd.jsp">Ingresar tipo de productos</a></li>
        <li><a href="listaTpProd.jsp">Lista tipo de productos</a></li>
        <li><a href="listaprod.jsp">Lista de productos</a></li>
    </ul>
  </div>
</nav>
      
      
