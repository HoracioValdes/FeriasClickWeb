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
public class Compra {
    private int idCompra;
    private int montoCompra;
    private String estadoCompra;
    private String fecha_compra;
    private String rutCompra;

    public Compra() {
    }

    public Compra(int idCompra, int montoCompra, String estadoCompra, String fecha_compra, String rutCompra) {
        this.idCompra = idCompra;
        this.montoCompra = montoCompra;
        this.estadoCompra = estadoCompra;
        this.fecha_compra = fecha_compra;
        this.rutCompra = rutCompra;
    }

    public int getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public int getMontoCompra() {
        return montoCompra;
    }

    public void setMontoCompra(int montoCompra) {
        this.montoCompra = montoCompra;
    }

    public String getEstadoCompra() {
        return estadoCompra;
    }

    public void setEstadoCompra(String estadoCompra) {
        this.estadoCompra = estadoCompra;
    }

    public String getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(String fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public String getRutCompra() {
        return rutCompra;
    }

    public void setRutCompra(String rutCompra) {
        this.rutCompra = rutCompra;
    }
    
    
}
