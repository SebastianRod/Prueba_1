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
import org.apache.log4j.Logger;

/**
 *
 * @author juan.b.rodriguez
 */
public class FacturaMySQLDbDAO implements FacturaDAO {

    //static Logger log = Logger.getLogger(FacturaMySQLDbDAO.class);
    
    @Override
    public Map<String, String> consultaFactura(String id_factura) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        Map<String, String> factura = new HashMap<>();
        Connection con = mydb.conexion();
        PreparedStatement st;
        ResultSet rs;
        try {
            st = con.prepareStatement("select f.ID_FACTURA, f.FECHA_FACTURA,f.VALOR_FACTURA,c.ID_CLIENTE,c.NOMBRES_CLIENTE,c.APELLIDOS_CLIENTE, v.ID_VEHICULO,v.PLACA_VEHICULO from factura f, cliente c, vehiculo v "
                    + "where f.CLIENTE_ID_CLIENTE = c.ID_CLIENTE"
                    + " and f.VEHICULO_ID_VEHICULO = v.ID_VEHICULO"
                    + " and f.ID_FACTURA ='" + id_factura + "';");
            System.out.println(st);
            rs = st.executeQuery();
            //log.info("Se esta ejecutnado el query: "+st);
            while (rs.next()) {
                factura.put("id_factura", rs.getString("id_factura"));
                factura.put("fecha_factura", rs.getString("fecha_factura"));
                factura.put("valor_factura", rs.getString("valor_factura"));
                factura.put("id_cliente", rs.getString("id_cliente"));
                factura.put("nombres_cliente", rs.getString("nombres_cliente"));
                factura.put("apellidos_cliente", rs.getString("apellidos_cliente"));
                factura.put("id_vehiculo", rs.getString("id_vehiculo"));
                factura.put("placa_vehiculo", rs.getString("placa_vehiculo"));
            }
        } catch (Exception e) {
            //e.printStackTrace();
            //log.fatal("Error consultando factura "+e.getMessage());
        }
        return factura;
    }

    @Override
    public int crearFactura(String id_cliente, String id_vehiculo,String precio) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        int resultado = 0;
        Connection con = mydb.conexion();
        PreparedStatement st;
        String insert = "insert into factura (valor_factura,CLIENTE_ID_CLIENTE,VEHICULO_ID_VEHICULO,USUARIO_ID_USUARIO) values ("+ precio + "," + id_cliente + "," + id_vehiculo + "," + "1);";
        //log.info("Se esta ejecutnado el query: "+insert);
        try {
            st = con.prepareStatement(insert);
            resultado = st.executeUpdate();
            st.close();
        } catch (Exception e) {
            //e.printStackTrace();
            //log.fatal("Error creando factura "+e.getMessage());
        }
        return resultado;
    }

}
