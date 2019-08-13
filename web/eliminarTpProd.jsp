<%-- 
    Document   : eliminarTpProd
    Created on : 26-may-2019, 3:51:14
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
    String idtpProd = request.getParameter("ID_TIPO");
    String consulta = "DELETE FROM TIPO_PRODUCTO WHERE ID_TIPO = '"+ idtpProd+"'";
    Connection con = Conectar.getConexion();
    PreparedStatement st = con.prepareStatement(consulta);
    st.executeUpdate();
    request.getRequestDispatcher("listaTpProd.jsp").forward(request, response);
    st.close();
    } catch (Exception e) {
    }
    
%>
    </body>
</html>
