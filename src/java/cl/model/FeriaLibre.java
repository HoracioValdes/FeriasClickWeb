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
public class FeriaLibre {
    private int idFeria;
    private String nombreFeria;
    private String comunaFeria;
    private String direccionFeria;

    public FeriaLibre() {
    }

    public FeriaLibre(int idFeria, String nombreFeria, String comunaFeria, String direccionFeria) {
        this.idFeria = idFeria;
        this.nombreFeria = nombreFeria;
        this.comunaFeria = comunaFeria;
        this.direccionFeria = direccionFeria;
    }

    public int getIdFeria() {
        return idFeria;
    }

    public void setIdFeria(int idFeria) {
        this.idFeria = idFeria;
    }

    public String getNombreFeria() {
        return nombreFeria;
    }

    public void setNombreFeria(String nombreFeria) {
        this.nombreFeria = nombreFeria;
    }

    public String getComunaFeria() {
        return comunaFeria;
    }

    public void setComunaFeria(String comunaFeria) {
        this.comunaFeria = comunaFeria;
    }

    public String getDireccionFeria() {
        return direccionFeria;
    }

    public void setDireccionFeria(String direccionFeria) {
        this.direccionFeria = direccionFeria;
    }
 
    
}
