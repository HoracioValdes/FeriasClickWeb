/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.controlador;

import cl.dao.DAOusuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DAvil
 */
public class RegistrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Corrección de caracteres
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //Generamos las variables para obtener los datos del formulario
        //Los datos que estan entre parentesis "" tiene que ser iguales a los nombres que tiene en el formulario
        //porque de esa forma obtenemos el dato.
        String rut = request.getParameter("txtRut");
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String clave = request.getParameter("txtClave");
        String nombre_usuario = request.getParameter("txtNombreUsuario");
        String correo = request.getParameter("txtCorreo");
        String tipo = request.getParameter("cboTipoUsu");
        String comuna = request.getParameter("cboComuna");
        String direccion = request.getParameter("txtDireccion");
        String errores="", msg="";
        //Se realiza una validación básica. (No se aceptan vacíos)
        if (rut.isEmpty()){
            errores += "Debes ingresar el rut. <br />";
        }
        if (nombre.isEmpty()){
            errores += "Debes ingresar la nombre. <br />";
        }
        if (apellido.isEmpty()){
            errores += "Debes ingresar la apellido. <br />";
        }
        if (clave.isEmpty()){
            errores += "Debes ingresar la clave. <br />";
        }
        if (nombre_usuario.isEmpty()){
            errores += "Debes ingresar la nombre de usuario. <br />";
        }
        if (correo.isEmpty()){
            errores += "Debes ingresar el correo. <br />";
        }
//        if (tipo.isEmpty()){
//            errores += "Debes ingresar la tipo. <br />";
//        }
//        if (comuna.isEmpty()){
//            errores += "Debes ingresar la comuna. <br />";
//        }
        if (direccion.isEmpty()){
            errores += "Debes ingresar la direccion. <br />";
        }
        
        if (errores.isEmpty()){
        DAOusuario usu = new DAOusuario();
        if(usu.registrarUsuario(rut, nombre, apellido, clave, nombre_usuario, correo, tipo, comuna, direccion)){
            //Si esta correcto lo direccionamos a una pagina
            //response.sendRedirect("index.jsp");
            errores = "Usuario registrado.";
            request.setAttribute("msg", errores);
                //Si el usuario no existe debe volver a la pagina index 
            request.getRequestDispatcher("registroUsu.jsp").forward(request, response);
        }else {
            errores = "Usuario no registrado.";
            request.setAttribute("msg", errores);
                //Si el usuario no existe debe volver a la pagina index 
            request.getRequestDispatcher("registroUsu.jsp").forward(request, response);
        }
        
        }else{
             //errores = "Usuario y/o Claveinválidas."; 
               request.setAttribute("msg", errores);
               request.getRequestDispatcher("registroUsu.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
