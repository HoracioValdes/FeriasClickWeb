/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.controlador;

import cl.dao.DAOusuario;
import cl.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DAvil
 */
public class InicioSesion extends HttpServlet {

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
        PrintWriter out = response.getWriter();
//        try () {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet InicioSesion</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet InicioSesion at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//            
//            //Se recuperan los parámetros desde la petición.
//        
//        }
        
       
        
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
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //processRequest(request, response);
         String nombre_usuario = request.getParameter("txtNom_usuario");
        String clave = request.getParameter("txtClave");
        DAOusuario usu = new DAOusuario();
        ArrayList<Usuario> listaUsuario = DAOusuario.listarUsuario();
        String errores="", msg="";
        //Se realiza una validación básica. (No se aceptan vacíos)
        if (nombre_usuario.isEmpty()){
            errores += "Debes ingresar tu usuario. <br />";
        }
        if (clave.isEmpty()){
            errores += "Debes ingresar la clave. <br />";
        }
        
        //Variables para definir el tipo de usuario
        Usuario usuarioValido = null;
        String tipoSesion = null;
        //Verificar si hubo errores
        if (errores.isEmpty()){//Están los datos buscar el usuario
            //Se verifica si el usuario es válido.
            for (Usuario u : listaUsuario) {
                if (u.getNombre_usuario().equals(nombre_usuario) && u.getClave().equals(clave)){
                    usuarioValido = u;
                    tipoSesion = u.getTipo();
                    break;
                }
            }
             if (usuarioValido != null){//Usuario autorizado
                //Se genera una sesión para el usuario.
                request.getSession().setAttribute("usuario", usuarioValido);
                //Se le da acceso la menú de la aplicación.
                if(tipoSesion.equalsIgnoreCase("ADMINISTRADOR")){
                    request.getRequestDispatcher("MenuGeneral.jsp").forward(request, response);
                }else if (tipoSesion.equalsIgnoreCase("COMERCIANTE")) {
                     request.getRequestDispatcher("MenuComerciante.jsp").forward(request, response);
                }else{
                request.getRequestDispatcher("MenuRepartidor.jsp").forward(request, response);
                    
                }
            
//             if (usu.autenticacion(nombre_usuario, clave)) {
//                //Se creara la sesion
//                HttpSession objsesion = request.getSession(true);
//                //que nos guarde el usuario que incio
//                objsesion.setAttribute("usuario", nombre_usuario);
//                //Si el usuario existe vaya a
//                response.sendRedirect("MenuGeneral.jsp");
            }else {
                //Se mostrara este mensaje
                errores = "Usuario y/o Clave inválidas.";
                request.setAttribute("msg", errores);
                //Si el usuario no existe debe volver a la pagina index 
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
               //request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else{
             //errores = "Usuario y/o Claveinválidas."; 
               request.setAttribute("msg", errores);
               request.getRequestDispatcher("index.jsp").forward(request, response);
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
