/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.CompTotalesComer;
import cl.model.Producto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DAvil
 */
public class DAOproducto extends Conectar{
    public ArrayList<Producto> listaProducto(){
        ArrayList<Producto> lista = new ArrayList<>();
        String sql ="select * from producto ";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Producto prod = new Producto();
                prod.setId_Producto(rs.getInt("ID_PRODUCTO"));
                prod.setNombre_producto(rs.getString("NOMBRE_PRODUCTO"));
                prod.setCantidad_producto(rs.getInt("CANTIDAD_PRODUCTO"));
                prod.setValorizacion_producto(rs.getInt("VALORACION_PRODUCTO"));
                prod.setCosto_producto(rs.getInt("COSTO_PRODUCTO"));
                prod.setId_tipo(rs.getInt("ID_TIPO"));
                lista.add(prod);
                
            }
        } catch (Exception e) {
        }
         return lista;
    } 
    
     
}
