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
public class ClienteMySQLDbDAO implements ClienteDAO {

    static Logger log = Logger.getLogger(ClienteMySQLDbDAO.class);
    
    @Override
    public Map<String, String> consultaCliente(String tipoDocumento, String id_cliente) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        Map<String, String> cliente = new HashMap<>();
        Connection con = mydb.conexion();
        PreparedStatement st;
        ResultSet rs;
        try {
            st = con.prepareStatement("select * from cliente where id_cliente = " + id_cliente + " and tipo_documento_cliente = '" + tipoDocumento + "';");
            rs = st.executeQuery();
            log.info("Se esta ejecutnado el query: "+st);
            while (rs.next()) {
                cliente.put("id_cliente", rs.getString("id_cliente"));
                cliente.put("tipo_documento_cliente", rs.getString("tipo_documento_cliente"));
                cliente.put("nombres_cliente", rs.getString("nombres_cliente"));
                cliente.put("apellidos_cliente", rs.getString("apellidos_cliente"));
                cliente.put("telefono_cliente", rs.getString("telefono_cliente"));
                cliente.put("correo_cliente", rs.getString("correo_cliente"));
                cliente.put("direccion_cliente", rs.getString("direccion_cliente"));
            }
            st.close();
        } catch (Exception e) {
            //e.printStackTrace();
            log.fatal("Error consultando cliente "+e.getMessage());
        }
        return cliente;
    }

    @Override
    public int crearCliente(int id_cliente, String tipo_documento_cliente, String nombres_cliente, String apellidos_cliente, int telefono_cliente, String correo_cliente, String direccion_cliente) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        int resultado = 0;
        Connection con = mydb.conexion();
        PreparedStatement st;
        String insert = "insert into cliente values ("+id_cliente+",'"+tipo_documento_cliente+"','"+nombres_cliente+"','"+apellidos_cliente+"',"+telefono_cliente+",'"+correo_cliente+"','"+direccion_cliente+"');";
        try{
            st = con.prepareStatement(insert);
            log.info("Se esta ejecutnado el query: "+st);
            System.out.println(insert);
            resultado = st.executeUpdate();
            st.close();
        }catch(Exception e){
            //e.printStackTrace();
            log.fatal("Error creando cliente "+e.getMessage());
        }
        return resultado;
    }

}
