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
public class Producto {
    private int id_Producto;
    private String nombre_producto;
    private int cantidad_producto;
    private int valorizacion_producto;
    private int costo_producto;
    private int id_tipo;

    public Producto() {
    }

    public Producto(int id_Producto, String nombre_producto, int cantidad_producto, int valorizacion_producto, int costo_producto, int id_tipo) {
        this.id_Producto = id_Producto;
        this.nombre_producto = nombre_producto;
        this.cantidad_producto = cantidad_producto;
        this.valorizacion_producto = valorizacion_producto;
        this.costo_producto = costo_producto;
        this.id_tipo = id_tipo;
    }

    public int getId_Producto() {
        return id_Producto;
    }

    public void setId_Producto(int id_Producto) {
        this.id_Producto = id_Producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public int getCantidad_producto() {
        return cantidad_producto;
    }

    public void setCantidad_producto(int cantidad_producto) {
        this.cantidad_producto = cantidad_producto;
    }

    public int getValorizacion_producto() {
        return valorizacion_producto;
    }

    public void setValorizacion_producto(int valorizacion_producto) {
        this.valorizacion_producto = valorizacion_producto;
    }

    public int getCosto_producto() {
        return costo_producto;
    }

    public void setCosto_producto(int costo_producto) {
        this.costo_producto = costo_producto;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }
    
    
}
