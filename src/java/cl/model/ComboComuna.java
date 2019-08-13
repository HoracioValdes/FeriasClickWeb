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
public class ComboComuna {
    private int idComuna;
    private String nomComuna;

    public ComboComuna() {
    }

    public ComboComuna(int idComuna, String nomComuna) {
        this.idComuna = idComuna;
        this.nomComuna = nomComuna;
    }

    public int getIdComuna() {
        return idComuna;
    }

    public void setIdComuna(int idComuna) {
        this.idComuna = idComuna;
    }

    public String getNomComuna() {
        return nomComuna;
    }

    public void setNomComuna(String nomComuna) {
        this.nomComuna = nomComuna;
    }
    
    
}
