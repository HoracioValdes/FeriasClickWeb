<%
    //Se procede a cerrar la sesión
    session.invalidate();
    //Se redirecciona a login.jsp
    response.sendRedirect("index.jsp");
%>