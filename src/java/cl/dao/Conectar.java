/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DAvil
 */
public class Conectar {

//    static Connection conectar() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
        //private String BaseDeDatos = "jdbc:mysql://204.93.193.161:3306/fundacio_ferias_click;user=fundacio_feriano;password=hifyexjm2zvtnwgacubl;";

    public Conectar() {
    }
    
    /** Permite obtener una conexión con la BD SQL Server.
     * @return Connection
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException  */
    public static Connection getConexion() 
            throws ClassNotFoundException, SQLException{
        //Registro del Driver.
        Class.forName("com.mysql.jdbc.Driver");
        //Retornar al conexión
        return DriverManager.getConnection("jdbc:mysql://204.93.193.161:3306/fundacio_ferias_click", "fundacio_feriano", "hifyexjm2zvtnwgacubl");
    }
    
    public void Desconectar(Connection cn){
        try{
            cn.close();
        }catch(Exception error){ 
        }
    }
}
