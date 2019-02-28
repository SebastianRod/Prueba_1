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
                factura.put("fecha_factura", rs.getString("fecha_factura"));
                factura.put("valor_factura", rs.getString("valor_factura"));
                factura.put("valor_factura", rs.getString("valor_factura"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return factura;
    }

    @Override
    public int crearFactura(int id_cliente, int id_vehiculo) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        int resultado = 0;
        Connection con = mydb.MySQLDbDAOFactory();
        PreparedStatement st;
        String insert = "insert into factura ((VALOR_FACTURA,CLIENTE_ID_CLIENTE,VEHICULO_ID_VEHICULO,USUARIO_ID_USUARIO) values ("+40239+","+id_cliente+","+id_vehiculo+","+"1);";
        try{
            st = con.prepareStatement(insert);
            resultado = st.executeUpdate();
            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resultado;
    }
    
}
