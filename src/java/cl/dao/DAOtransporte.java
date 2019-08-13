/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.Transporte;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DAvil
 */
public class DAOtransporte extends Conectar{
    public ArrayList<Transporte> listaTransporte(){
        ArrayList<Transporte> lista = new  ArrayList<>();
        String sql ="select * from transporte";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConexion().prepareStatement(sql);
             //Se solicita la ejecuccion de la consulta
            rs = pst.executeQuery();
            while(rs.next()){
                Transporte tran = new Transporte();
                tran.setPatente(rs.getString("PATENTE_TRANSPORTE"));
                tran.setTipo_transporte(rs.getString("TIPO_TRANSPORTE"));
                lista.add(tran);
            }
            
        } catch (Exception e) {
        }
        return lista;
    }

}
