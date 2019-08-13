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
public class Transporte {
    private String patente;
    private String tipo_transporte;

    public Transporte() {
    }

    public Transporte(String patente, String tipo_transporte) {
        this.patente = patente;
        this.tipo_transporte = tipo_transporte;
    }

    public String getPatente() {
        return patente;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public String getTipo_transporte() {
        return tipo_transporte;
    }

    public void setTipo_transporte(String tipo_transporte) {
        this.tipo_transporte = tipo_transporte;
    }
    
    
    
}
