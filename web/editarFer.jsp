<%-- 
    Document   : editarFer
    Created on : 26-may-2019, 2:58:12
    Author     : DAvil
--%>

<%@page import="cl.model.ComboComuna"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.dao.DAOFeriaLibre"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="cl.dao.Conectar"%>
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
        <title>Modificar Feria</title>
    </head>
    <body>
               <%
           
    String idFeria = request.getParameter("ID_FERIA");
    ResultSet rs = null;
     try {
    
    
    String consulta = "select * from FERIA_LIBRE where ID_FERIA= '"+idFeria+"'";
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
                    <td>ID feria:</td>
                    <td><input name="txtIdFeria" id="" type="text" value="<%= rs.getString(1) %>" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><input name="txtNombre" id="" type="text" value="<%= rs.getString(2) %>" /></td>
                </tr>
                <tr>
                    <td>Comuna:</td>
                    <td>
                        <select name="cboComuna"  value="<%= rs.getString(3) %>">   
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
                        <td><input name="txtDireccion" id="" type="text" value="<%= rs.getString(4) %>"/></td>
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
     
      
        String idFeriaa  = request.getParameter("txtIdFeria");
        String nombre = request.getParameter("txtNombre").toUpperCase();
        String comuna = request.getParameter("cboComuna");
        String direccion = request.getParameter("txtDireccion").toUpperCase();
    
    String consulta = "update FERIA_LIBRE set NOMBRE_FERIA='"+nombre+"', ID_COMUNA ='"+comuna+"', DIRECCION_FERIA='"+direccion+"' where ID_FERIA='"+idFeriaa+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    st.executeUpdate(consulta);
    request.getRequestDispatcher("listaFeria.jsp").forward(request, response);
    
    
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
