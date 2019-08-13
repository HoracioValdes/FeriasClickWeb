/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.model.MensualesRepar;
import cl.model.totalesReparto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DAvil
 */
public class DAOtotalReparto extends Conectar{
    public ArrayList<totalesReparto> listaTotalesReparto(String rutRepartidor){
        ArrayList<totalesReparto> listatotalReparto = new ArrayList<>();

        totalesReparto totalesrepartido;
        String sql = "SELECT FECHA_HORA_DESPACHO, 6000 AS MONTO, DIRECCION_DESPACHO FROM DESPACHA WHERE RUT = '"+ rutRepartidor +"';";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                totalesrepartido = new totalesReparto();
                totalesrepartido.setFecha_hora_reparto(rs.getString("FECHA_HORA_DESPACHO"));
                totalesrepartido.setMonto(rs.getInt("MONTO"));
                totalesrepartido.setDireccion_despacho(rs.getString("DIRECCION_DESPACHO"));
                listatotalReparto.add(totalesrepartido);
            }
        } catch (Exception e) {
        }
        return listatotalReparto;
    }
    
     public ArrayList<MensualesRepar> listaMenRep(String rutRepartidor, String fechaDesde, String fechaHasta){
        ArrayList<MensualesRepar> listaMensReparto = new ArrayList<>();
        MensualesRepar mensRep;
        String sql = "SELECT FECHA_HORA_DESPACHO, 6000 AS MONTO, DIRECCION_DESPACHO FROM DESPACHA WHERE RUT = '"+ rutRepartidor +"' AND FECHA_HORA_DESPACHO BETWEEN '"+ fechaDesde +"' AND '"+ fechaHasta + "';";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                mensRep = new MensualesRepar();
                mensRep.setFecha_hora_despacho(rs.getString("FECHA_HORA_DESPACHO")); 
                mensRep.setMonto(rs.getInt("MONTO"));
                mensRep.setDireccion_despacho(rs.getString("DIRECCION_DESPACHO"));
                listaMensReparto.add(mensRep);
            }
        } catch (Exception e) {
        }
        return listaMensReparto;
    }
}
