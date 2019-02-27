/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author juan.b.rodriguez
 */
public class VehiculoMySQLDbDAO implements VehiculoDAO {

    @Override
    public Map<String, String> consultaVehiculo(String id_vehiculo) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        Map<String, String> vehiculo = new HashMap<>();
        Connection con = mydb.MySQLDbDAOFactory();
        PreparedStatement st;
        ResultSet rs;
        try {
            st = con.prepareStatement("select * from vehiculo where id_vehiculo = '" + id_vehiculo + "';");
            rs = st.executeQuery();
            while (rs.next()) {
                vehiculo.put("id", rs.getString("id_vehiculo"));
                vehiculo.put("placa", rs.getString("placa_vehiculo"));
                vehiculo.put("modelo", rs.getString("modelo_vehiculo"));
                vehiculo.put("precio", rs.getString("precio_vehiculo"));
                //vehiculo.add(aux);
            }
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vehiculo;
    }

}
