<%-- 
    Document   : eliminarFer
    Created on : 26-may-2019, 2:58:28
    Author     : DAvil
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="cl.dao.Conectar"%>
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
    String idFeria = request.getParameter("ID_FERIA");
    String consulta = "DELETE FROM FERIA_LIBRE WHERE ID_FERIA = '"+idFeria+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    st.executeUpdate();
    request.getRequestDispatcher("listaFeria.jsp").forward(request, response);
    st.close();
    } catch (Exception e) {
    }
    
%>
    </body>
</html>
