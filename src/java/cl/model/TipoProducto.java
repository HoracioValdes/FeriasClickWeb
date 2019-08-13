/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.model;

/**
 *
 * @author DAvil
 */
public class TipoProducto {
    private int idTpProd;
    private String nombreTpProd;

    public TipoProducto() {
    }

    public TipoProducto(int idTpProd, String nombreTpProd) {
        this.idTpProd = idTpProd;
        this.nombreTpProd = nombreTpProd;
    }

    public int getIdTpProd() {
        return idTpProd;
    }

    public void setIdTpProd(int idTpProd) {
        this.idTpProd = idTpProd;
    }

    public String getNombreTpProd() {
        return nombreTpProd;
    }

    public void setNombreTpProd(String nombreTpProd) {
        this.nombreTpProd = nombreTpProd;
    }
    
    
}
