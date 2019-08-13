<%-- 
    Document   : eliminarUsu
    Created on : 25-may-2019, 20:33:36
    Author     : DAvil
--%>

<%@page import="cl.dao.DAOusuario"%>
<%@page import="cl.model.Usuario"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="cl.dao.Conectar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
    try {
    String RUT = request.getParameter("RUT");
    String consulta = "DELETE FROM USUARIO WHERE RUT = '"+RUT+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    st.executeUpdate();
    request.getRequestDispatcher("listaUsu.jsp").forward(request, response);
    st.close();
    } catch (Exception e) {
    }
    
%>
    </body>
</html>
