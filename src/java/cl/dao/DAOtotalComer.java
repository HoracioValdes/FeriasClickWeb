/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import static cl.dao.Conectar.getConexion;
import cl.model.CompTotalesComer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DAvil
 */
public class DAOtotalComer extends Conectar{
     //Lista de ventas totales por comcerciente
    public ArrayList<CompTotalesComer> listaTotalesComer(String rutComer){
        ArrayList<CompTotalesComer> listatotalComer = new ArrayList<>();

        CompTotalesComer compTotalesCom;
        String sql = "SELECT PRODUCTO.NOMBRE_PRODUCTO, INCORPORA.CANTIDAD_PRODUCTO * PRODUCTO.COSTO_PRODUCTO AS MONTO, COMPRA.FECHA_HORA_COMPRA FROM PRODUCTO INNER JOIN INCORPORA ON PRODUCTO.ID_PRODUCTO = INCORPORA.ID_PRODUCTO INNER JOIN COMPRA ON COMPRA.ID_COMPRA = INCORPORA.ID_COMPRA WHERE PRODUCTO.RUT = '"+ rutComer+"';";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                compTotalesCom = new CompTotalesComer();
                compTotalesCom.setNombreProd(rs.getString("NOMBRE_PRODUCTO"));
//                compTotalesCom.setCantidad_prod(rs.getInt("CANTIDAD_PRODUCTO"));
//                compTotalesCom.setCosto_prod(rs.getInt("COSTO_PRODUCTO"));
                compTotalesCom.setMonto(rs.getInt("MONTO"));
                compTotalesCom.setFecha_hora_compra(rs.getString("FECHA_HORA_COMPRA"));
//                compTotalesCom.setId_prod(rs.getInt("ID_PRODUCTO"));
//                compTotalesCom.setId_compra(rs.getInt("ID_COMPRA"));
                //compTotalesCom.setRutConsulta(rut_Comer);
                listatotalComer.add(compTotalesCom);
            }
        } catch (Exception e) {
        }
        return listatotalComer;
    }
}
