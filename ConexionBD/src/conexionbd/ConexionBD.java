/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionbd;

import controllers.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Lab-1 Pc-13
 */
public class ConexionBD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            Conexion conexion = new Conexion ();
            Connection conn = conexion.obtenerConexion();
            PreparedStatement ps  =
                    conn.prepareStatement("Select * from ciudades");
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                System.out.println("Conexion");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
