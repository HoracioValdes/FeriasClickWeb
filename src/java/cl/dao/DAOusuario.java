/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.Usuario;
import cl.dao.Conectar;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DAvil
 */
public class DAOusuario extends Conectar{

   
public boolean autenticacion (String usuario, String clave){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuario where NOMBRE_USUARIO = ? and CLAVE = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            //Ejecute la consulta
            rs = pst.executeQuery();
            //Si encuentra el usuario
            if(rs.absolute(1)){
                return true;
            }
            
        } catch (Exception e) {
            System.err.println("Error" + e);
        }finally{
            try {
                //para cerrar la conexcion 
                if (getConexion() != null) getConexion().close();
                if (pst != null) pst.close();
                if (rs !=null) rs.close();
            } catch (Exception e) {
            }
        }
        return false;
    }
    
  public boolean registrarUsuario (String rut, String nombre, String apellidos, String clave, String nombre_usuario, String correo, String tipo, String comuna, String direccion){
      PreparedStatement pst = null;
       try {
           //consulta en BD
          String consulta = "insert into usuario (RUT, NOMBRE, APELLIDOS, CLAVE, NOMBRE_USUARIO, CORREO_ELECTRONICO, TIPO, ID_COMUNA, DIRECCION) values (?,?,?,?,?,?,?,?,?)";
          pst = getConexion().prepareStatement(consulta);
          //Pasar los parametros
          pst.setString(1, rut.toUpperCase());
          pst.setString(2, nombre.toUpperCase());
          pst.setString(3, apellidos.toUpperCase());
          pst.setString(4, clave);
          pst.setString(5, nombre_usuario);
          pst.setString(6, correo.toUpperCase());
          pst.setString(7, tipo.toUpperCase());
          pst.setString(8, comuna);
          pst.setString(9, direccion.toUpperCase());
          
          //Si se inserto el dato
          if(pst.executeUpdate() == 1){
              return true;
          }
          
       } catch (Exception e) {
           System.out.println("Error" + e);
      }finally{
           try {
               if(getConexion() != null) getConexion().close();
               if(pst != null) pst.close();
           } catch (Exception e) {
               System.out.println("Error" + e);
           }
      }
      return false;
  }
  
  
  public static ArrayList<Usuario> listarUsuario (){
        ArrayList<Usuario> lista = new ArrayList<>();
               
        try {
            //Este comando permite llamar al procedure listarUsusario()
            CallableStatement cl = Conectar.getConexion().prepareCall("call listarUsuario()");
            ResultSet rs = cl.executeQuery();
            while (rs.next()){
                Usuario usu = new Usuario();
                usu.setRut(rs.getString("RUT"));
                usu.setNombre(rs.getString("NOMBRE"));
                usu.setApellidos(rs.getString("APELLIDOS"));
                usu.setClave(rs.getString("CLAVE"));
                usu.setNombre_usuario(rs.getString("NOMBRE_USUARIO"));
                usu.setCorreo_eletronico(rs.getString("CORREO_ELECTRONICO"));
                usu.setTipo(rs.getString("TIPO"));
                usu.setComuna(rs.getString("ID_COMUNA"));
                usu.setDireccion(rs.getString("DIRECCION"));
                lista.add(usu);
            }
      } catch (Exception e) {
      }
        return lista;
  }
  

  public static Usuario obtenerUsuario (String rut){
      Usuario usu =null;
      try {
          //Este comando permite llamar al procedure usuarioCod()
            CallableStatement cl = Conectar.getConexion().prepareCall("call usuarioCod(?)");
            //Completo el campo rut (?) con el dato que traera el metodo
            cl.setString(1, rut);
            //Luego ejecuto el comando
            ResultSet rs = cl.executeQuery();
            while(rs.next()){
                usu = new Usuario();
                usu.setRut(rs.getString("RUT"));
                usu.setNombre(rs.getString("NOMBRE"));
                usu.setApellidos(rs.getString("APELLIDOS"));
                usu.setClave(rs.getString("CLAVE"));
                usu.setNombre_usuario(rs.getString("NOMBRE_USUARIO"));
                usu.setCorreo_eletronico(rs.getString("CORREO_ELECTRONICO"));
                usu.setTipo(rs.getString("TIPO"));
                usu.setComuna(rs.getString("ID_COMUNA"));
                usu.setDireccion(rs.getString("DIRECCION"));
                
            }
      } catch (Exception e) {
      }
      return usu;
  }

  
  
  
// public  ArrayList<Usuario> listarUsuario (){
//     ArrayList<Usuario> lista = new ArrayList<>();
//     String sql ="select * from usuario";
//     PreparedStatement pst = null;
//     ResultSet rs = null;
//     try {
//         //Se manda la consulta a la base de datos
//        pst = getConexion().prepareStatement(sql);
//         //Se solicita la ejecuccion de la consulta
//        rs = pst.executeQuery();
//        while (rs.next()){
//          Usuario usu = new Usuario();
//          //Se solicita la informacion a la bd lo que esta entre parentiss "" debe ser igual como esta en BD
//          usu.setRut(rs.getString("RUT"));
//          usu.setNombre(rs.getString("NOMBRE"));
//          usu.setApellidos(rs.getString("APELLIDOS"));
//          usu.setClave(rs.getString("CLAVE"));
//          usu.setNombre_usuario(rs.getString("NOMBRE_USUARIO"));
//          usu.setCorreo_eletronico(rs.getString("CORREO_ELECTRONICO"));
//          usu.setTipo(rs.getString("TIPO"));
//          usu.setComuna(rs.getString("ID_COMUNA"));
//          usu.setDireccion(rs.getString("DIRECCION"));
//          lista.add(usu);
//        }
//     } catch (Exception e) {
//     }
//     return lista;
// }
 
// public static  boolean eliminar(Usuario u){
//      
//     try {
//      String SQL = "delete from usuario where rut=?";
//      Connection con = Conectar.conectar();
//       //Se manda la consulta a la base de datos
//      PreparedStatement st = con.prepareStatement(SQL);
//      st.setString(1, u.getRut());  
//        
//          if(st.executeUpdate()>0){
//                return true;
//            }else{
//                return false;
//            }
//        } catch (SQLException ex) {
//            return false;
//        }
// }
 
     
 
}
