/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.ComboComuna;
import cl.dao.Conectar;
import cl.model.FeriaLibre;
import java.sql.Connection;
import java.sql.DriverManager;
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
public class DAOFeriaLibre extends Conectar {
     public ArrayList<FeriaLibre> listarFeria(){
         ArrayList<FeriaLibre> lista = new ArrayList<>();
         String sql ="select * from feria_libre";
         PreparedStatement pst = null;
         ResultSet rs = null;
         try {
              //Se manda la consulta a la base de datos
            pst = getConexion().prepareStatement(sql);
             //Se solicita la ejecuccion de la consulta
            rs = pst.executeQuery();
            while(rs.next()){
               FeriaLibre fer = new FeriaLibre();
                fer.setIdFeria(rs.getInt("ID_FERIA"));
                fer.setNombreFeria(rs.getString("NOMBRE_FERIA"));
                fer.setComunaFeria(rs.getString("ID_COMUNA"));
                fer.setDireccionFeria(rs.getString("DIRECCION_FERIA"));
                lista.add(fer);
            }    
            
         } catch (Exception e) {
         }
         
         return lista;
     }
    
     
     public boolean registrarFeria (String nombreFeria, String comunaFeria, String direccionFeria){
        PreparedStatement pst = null;
        try {
              String consulta = "insert into FERIA_LIBRE (NOMBRE_FERIA, ID_COMUNA, DIRECCION_FERIA) values (?,?,?)";
              pst = getConexion().prepareStatement(consulta);
              pst.setString(1, nombreFeria.toUpperCase());
              pst.setString(2, comunaFeria);
              pst.setString(3, direccionFeria.toUpperCase());
              //Si se inserto el dato
             if(pst.executeUpdate() == 1){
                 return true;
            }
              
        } catch (Exception e) {
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
     
//        public  static ArrayList<ComboComuna> listarComunas()  {
//         PreparedStatement pst = null;
//            ArrayList<ComboComuna> listaComunas = new ArrayList();
//        ComboComuna comuna;
//        //Preparacion de consulta
//        String consulta = "SELECT * FROM COMUNA; ";
//        try {
//            //String consulta = "insert into FERIA_LIBRE (NOMBRE_FERIA, COMUNA_FERIA, DIRECCION_FERIA) values (?,?,?)";
//              pst = getConexion().prepareStatement(consulta);
//              pst.setString(1, nombreFeria);
//              pst.setString(2, comunaFeria);
//              pst.setString(3, direccionFeria);
//           
//            //ejecutar la consulta.
//            ResultSet res = pst.executeQuery();
//            ArrayList<ComboComuna> lista= new ArrayList<>();
//            ComboComuna communa;
//            //Se recorre el ResultSet.
//            while (res.next()) {
//                comuna = new ComboComuna();
//                comuna.setIdComuna(Integer.parseInt(res.getString("ID_COMUNA")));
//                comuna.setNomComuna(res.getString("NOMBRE_COMUNA"));
//                //Se agrega la comuna a la lista.
//                listaComunas.add(comuna);
//            }
//             return lista;
//        } catch (SQLException ex) {
//            return null;
//        }
//    }
     
     
     public ArrayList<ComboComuna> listarComuna(){
         PreparedStatement pst = null;
         ResultSet rs = null;
         
         try {
             
             //Quiero consulta todoas las categorias
            String SQL="select * from comuna;";
             pst = getConexion().prepareStatement(SQL);
             rs = pst.executeQuery();
             ArrayList<ComboComuna> lista= new ArrayList<>();
            ComboComuna com;
             //Minetras encuentra un dato en resultado vaya llenandome esa lista
            while(rs.next()){
                //Haga los siguiente
                com = new ComboComuna();
                //Los datos que van entre comillas "" son los nombres de los campos que tienen las tablas
                //Set es para recibir los valores que vienen de algun lugar
                //Get es para obtener o preguntar por el valor que tiene cada uno de los atributos
                //retorna la informacion para mostrar la lista
                com.setIdComuna(Integer.parseInt(rs.getString("ID_COMUNA")));
                com.setNomComuna(rs.getString("NOMBRE_COMUNA"));
                lista.add(com);
            } 
            return lista;
         } catch (Exception e) {
             return null;
         }
     }
     
    //No recibe datos solo los va a enlistar
     public String getComuna(String id) throws ClassNotFoundException{
         PreparedStatement pst = null;
         ResultSet rs = null;
        try {
              //Quiero consulta todoas las categorias
            String SQL="select nombre from editoriales where id=(?)";
            pst = getConexion().prepareStatement(SQL);
            pst.setString(1, id); 
            rs = pst.executeQuery();
            if(rs.next()){
                return rs.getString("nombre");
            }
                return "--";
        } catch (SQLException ex) {
            return "--";
        }
 
        
    }   
}
