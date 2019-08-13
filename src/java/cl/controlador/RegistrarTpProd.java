/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.controlador;

import cl.dao.DAOtipoProducto;
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
public class RegistrarTpProd extends HttpServlet {

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
            out.println("<title>Servlet RegistrarTpProd</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarTpProd at " + request.getContextPath() + "</h1>");
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
        String nomTpProd = request.getParameter("txtNomTpProd").toUpperCase();
        String errores="", msg="";
        if (nomTpProd.isEmpty()){
            errores += "Debes ingresar el nombre de la feria. <br />";
        }

        
        if (errores.isEmpty()){
            DAOtipoProducto tpProd = new DAOtipoProducto();
            if(tpProd.registrarTpProd(nomTpProd)){
                errores = "Tipo de producto registrado.";
                request.setAttribute("msg", errores);
                //Si el usuario no existe debe volver a la pagina index 
                request.getRequestDispatcher("ingTipoProd.jsp").forward(request, response); 
            }else {
            errores = "Tipo de producto NO registrado.";
            request.setAttribute("msg", errores);
                //Si el usuario no existe debe volver a la pagina index 
            request.getRequestDispatcher("ingTipoProd.jsp").forward(request, response);
            }
        
        }else{
                //errores = "Usuario y/o Claveinválidas."; 
               request.setAttribute("msg", errores);
               request.getRequestDispatcher("ingTipoProd.jsp").forward(request, response);
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
