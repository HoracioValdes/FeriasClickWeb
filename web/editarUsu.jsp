<%-- 
    Document   : editarUsu
    Created on : 25-may-2019, 19:39:06
    Author     : DAvil
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="cl.dao.Conectar"%>
<%@page import="cl.model.ComboComuna"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOFeriaLibre"%>
<%@page import="cl.dao.DAOusuario"%>
<%@page import="cl.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Obtenemos el rut-->

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
        <title>Modificar usuario</title>
    </head>
    <body>
        <%
           
    String rut = request.getParameter("RUT");
    ResultSet rs = null;
     try {
    
    String RUT = request.getParameter("RUT");
    String consulta = "select * from usuario where RUT= '"+RUT+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    rs = st.executeQuery();
    while (rs.next()){
        
    
%>
         
             <div class="col s12">
            
                    <jsp:include page="nav.jsp" />
         </div>
                    
         
         <h3>Editar usuarios</h3>
         <form  action="" >
            <table>
<!--                <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
                </div>-->
                <tr>
                    <td>Rut:</td>
                    <td><input name="txtRut" id="" type="text" value="<%= rs.getString(1) %>" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><input name="txtNombre" id="" type="text" value="<%= rs.getString(2) %>" /></td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td><input name="txtApellido" id="" type="text" value="<%= rs.getString(3) %>" /></td>
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td><input name="txtClave" id="" type="text" value="<%= rs.getString(4) %>"/></td>
                </tr>
                <tr>
                    <td>Nombre usuario:</td>
                    <td><input name="txtNombreUsuario" id="" type="text" value="<%= rs.getString(5) %>"/></td>
                </tr>
                <tr>
                    <td>Correo:</td>
                    <td><input name="txtCorreo" id="" type="text" value="<%= rs.getString(6) %>"/></td>
                </tr>
                <tr>
                    <td>Tipo:</td>
                    <td>
                    <select name="cboTipoUsu"  value="<%= rs.getString(7) %>">   
                        <option value="" disabled selected>Seleccione un tipo de usuario</option>
                        <option value="ADMINISTRADOR">ADMINISTRADOR</option>
                        <option value="COMPRADOR">COMPRADOR</option>
                        <option value="COMERCIANTE">COMERCIANTE</option>
                        <option value="REPARTIDOR">REPARTIDOR</option>
                    </select> 
                    </td>
                </tr>
                <tr>
                    <td>Comuna:</td>
                    <td>
                        <select name="cboComuna"  value="<%= rs.getString(8) %>">   
                    <option value="" disabled selected>Seleccione una comuna</option>
                    <% DAOFeriaLibre fer = new DAOFeriaLibre();
                        ArrayList <ComboComuna> listacomuna= fer.listarComuna();
                        for(ComboComuna com : listacomuna){ %>
                    
                    
                    <option value="<%= com.getIdComuna() %>"><%= com.getNomComuna() %> </option>
                    <%}%>
                </select>
                     </td>
                     <tr>
                    <td>Direccion:</td>
                    <td><input name="txtDireccion" id="" type="text" value="<%= rs.getString(9) %>"/></td>
                    </tr>
                     
                        <div>
                    <button class="btn waves-effect waves-light" type="submit" name="btnModificar" >Modificar
                        <i class="material-icons right">send</i></br>
                    </button>
<!--<input type="submit" name="btnModificar" value="Editar usuario">-->
            </div>
               
            </table>

      <%
        
    }
//    request.getRequestDispatcher("listaUsu.jsp").forward(request, response);
    
    } catch (Exception e) {
    }
    
    if(request.getParameter("btnModificar") !=null){
   
        
    try {  
     
      
        String rutt = request.getParameter("txtRut");
        String nombre = request.getParameter("txtNombre").toUpperCase();
        String apellido = request.getParameter("txtApellido").toUpperCase();
        String clave = request.getParameter("txtClave");
        String nombre_usuario = request.getParameter("txtNombreUsuario");
        String correo = request.getParameter("txtCorreo").toUpperCase();
        String tipo = request.getParameter("cboTipoUsu");
        String comuna = request.getParameter("cboComuna");
        String direccion = request.getParameter("txtDireccion").toUpperCase();
    
    String consulta = "update usuario set NOMBRE='"+nombre+"', APELLIDOS='"+apellido+"', CLAVE='"+clave+"'  , NOMBRE_USUARIO='"+nombre_usuario+"', CORREO_ELECTRONICO='"+correo+"', TIPO ='"+tipo+"', ID_COMUNA ='"+comuna+"', DIRECCION='"+direccion+"' where RUT='"+rutt+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    st.executeUpdate(consulta);
    request.getRequestDispatcher("listaUsu.jsp").forward(request, response);
    
    
    }catch (Exception e) {
    }
}
    
      
      %>          
    </body>
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
            $(document).ready(function() {
                $('select').formSelect();
                M.updateTextFields();
                $(".dropdown-trigger").dropdown();
                $('select').material_select();
                $(".button-collapse").sideNav();
              });
        </script>
</html>
