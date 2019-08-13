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
public class CompTotalesComer {
    
    private String nombreProd;
//    private int cantidad_prod;
    private String fecha_hora_compra;
//    private int costo_prod;
    private int monto;
    
//    private int id_prod;
//    private int id_compra;
//    private String rutConsulta;

    public CompTotalesComer() {
    }

    public CompTotalesComer(String nombreProd, int monto, String fecha_hora_compra) {
        this.nombreProd = nombreProd;
//        this.cantidad_prod = cantidad_prod;
//        this.costo_prod = costo_prod;
        this.monto = monto;
        this.fecha_hora_compra = fecha_hora_compra;
//        this.id_prod = id_prod;
//        this.id_compra = id_compra;
//        this.rutConsulta = rutConsulta;
    }

    public String getNombreProd() {
        return nombreProd;
    }

    public void setNombreProd(String nombreProd) {
        this.nombreProd = nombreProd;
    }

//    public int getCantidad_prod() {
//        return cantidad_prod;
//    }
//
//    public void setCantidad_prod(int cantidad_prod) {
//        this.cantidad_prod = cantidad_prod;
//    }
//
//    public int getCosto_prod() {
//        return costo_prod;
//    }
//
//    public void setCosto_prod(int costo_prod) {
//        this.costo_prod = costo_prod;
//    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public String getFecha_hora_compra() {
        return fecha_hora_compra;
    }

    public void setFecha_hora_compra(String fecha_hora_compra) {
        this.fecha_hora_compra = fecha_hora_compra;
    }

//    public int getId_prod() {
//        return id_prod;
//    }
//
//    public void setId_prod(int id_prod) {
//        this.id_prod = id_prod;
//    }
//
//    public int getId_compra() {
//        return id_compra;
//    }
//
//    public void setId_compra(int id_compra) {
//        this.id_compra = id_compra;
//    }

//    public String getRutConsulta() {
//        return rutConsulta;
//    }
//
//    public void setRutConsulta(String rutConsulta) {
//        this.rutConsulta = rutConsulta;
//    }

    
}
