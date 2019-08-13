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
public class MensualesRepar {
    private String fecha_hora_despacho;
    private int monto;
    private String direccion_despacho;

    public MensualesRepar() {
    }

    public MensualesRepar(String fecha_hora_despacho, int monto, String direccion_despacho) {
        this.fecha_hora_despacho = fecha_hora_despacho;
        this.monto = monto;
        this.direccion_despacho = direccion_despacho;
    }

    public String getFecha_hora_despacho() {
        return fecha_hora_despacho;
    }

    public void setFecha_hora_despacho(String fecha_hora_despacho) {
        this.fecha_hora_despacho = fecha_hora_despacho;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public String getDireccion_despacho() {
        return direccion_despacho;
    }

    public void setDireccion_despacho(String direccion_despacho) {
        this.direccion_despacho = direccion_despacho;
    }
    
    
    
}
