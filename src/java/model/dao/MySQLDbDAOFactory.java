/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
//import org.apache.log4j.Logger;

/**
 *
 * @author juan.b.rodriguez
 */
public class MySQLDbDAOFactory extends DAOFactory {

    private Connection con = null;
    private final String url = "jdbc:mysql://localhost:3306/TAS";
    private final String login = "root";
    private final String passwd = "root";
    private static MySQLDbDAOFactory mysql;
    //static Logger log = Logger.getLogger(MySQLDbDAOFactory.class);

    public static MySQLDbDAOFactory mysqlDAO(){
        if(mysql == null){
            mysql = new MySQLDbDAOFactory();
        }
        return mysql;
    }
    

    public Connection conexion() {        
            //mysql = new MySQLDbDAOFactory();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url, login, passwd);
                //st = con.createStatement();

            } catch (Exception e) {
                //System.out.println(e.getMessage());
                //log.fatal("Error creando conexion a base de datos "+e.getMessage());
            }
        
        return con;
    }

    @Override
    public UsuarioDAO getUsuarioDAO() {
        return new UsuarioMySQLDbDAO();
    }

    @Override
    public VehiculoDAO getVehiculoDAO() {
        return new VehiculoMySQLDbDAO();
    }

    @Override
    public ClienteDAO getClienteDAO() {
        return new ClienteMySQLDbDAO();
    }

    @Override
    public FacturaDAO getFacturaDAO() {
        return new FacturaMySQLDbDAO();
    }
}
