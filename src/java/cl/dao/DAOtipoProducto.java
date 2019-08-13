/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.TipoProducto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DAvil
 */
public class DAOtipoProducto extends Conectar{
        public ArrayList<TipoProducto> listartpProd(){
         ArrayList<TipoProducto> lista = new ArrayList<>();
         String sql ="select * from TIPO_PRODUCTO";
         PreparedStatement pst = null;
         ResultSet rs = null;
         try {
              //Se manda la consulta a la base de datos
            pst = getConexion().prepareStatement(sql);
             //Se solicita la ejecuccion de la consulta
            rs = pst.executeQuery();
            while(rs.next()){
               TipoProducto tpProd = new TipoProducto();
                tpProd.setIdTpProd(rs.getInt("ID_TIPO"));
                tpProd.setNombreTpProd(rs.getString("NOMBRE_TIPO"));
                lista.add(tpProd);
            }    
            
         } catch (Exception e) {
         }
         
         return lista;
     } 
        
        public boolean registrarTpProd (String nombreTpProd ) {
        PreparedStatement pst = null;
        try {
              String consulta = "INSERT INTO TIPO_PRODUCTO (NOMBRE_TIPO) values (?)";
              pst = getConexion().prepareStatement(consulta);
              pst.setString(1, nombreTpProd.toUpperCase());
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
}
