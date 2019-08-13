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
public class totalesReparto {
    private String fecha_hora_reparto;
    private int monto;
    private String direccion_despacho;

    public totalesReparto() {
    }

    public totalesReparto(String fecha_hora_reparto, int monto, String direccion_despacho) {
        this.fecha_hora_reparto = fecha_hora_reparto;
        this.monto = monto;
        this.direccion_despacho = direccion_despacho;
    }

    public String getFecha_hora_reparto() {
        return fecha_hora_reparto;
    }

    public void setFecha_hora_reparto(String fecha_hora_reparto) {
        this.fecha_hora_reparto = fecha_hora_reparto;
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
