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
public class Usuario {
    private String rut;
    private String nombre;
    private String apellidos;
    private String clave;
    private String nombre_usuario;
    private String correo_eletronico;
    private String tipo;
    private String comuna;
    private String direccion;

    public Usuario() {
    }

    public Usuario(String rut, String nombre, String apellidos, String clave, String nombre_usuario, String correo_eletronico, String tipo, String comuna, String direccion) {
        this.rut = rut;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.clave = clave;
        this.nombre_usuario = nombre_usuario;
        this.correo_eletronico = correo_eletronico;
        this.tipo = tipo;
        this.comuna = comuna;
        this.direccion = direccion;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getCorreo_eletronico() {
        return correo_eletronico;
    }

    public void setCorreo_eletronico(String correo_eletronico) {
        this.correo_eletronico = correo_eletronico;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getComuna() {
        return comuna;
    }

    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    



    
}
