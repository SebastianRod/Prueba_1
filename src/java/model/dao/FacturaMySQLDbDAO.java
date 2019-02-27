/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author juan.b.rodriguez
 */
public class FacturaMySQLDbDAO implements FacturaDAO{

    @Override
    public Map<String, String> consultaFactura(int id_factura) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        Map<String, String> factura = new HashMap<>();
        Connection con = mydb.MySQLDbDAOFactory();
        PreparedStatement st;
        ResultSet rs;
        try {
            st = con.prepareStatement("select * from factura where id_factura = '" + id_factura + "';");
            rs = st.executeQuery();
            while (rs.next()) {
                factura.put("id_factura", rs.getString("id_factura"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return factura;
    }
    
}
