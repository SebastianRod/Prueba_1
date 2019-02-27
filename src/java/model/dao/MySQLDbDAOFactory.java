/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.Statement;

/**
 *
 * @author juan.b.rodriguez
 */
public class MySQLDbDAOFactory extends DAOFactory{

    public Connection MySQLDbDAOFactory() {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/TAS";
        String login = "root";
        String passwd = "root";
        //Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, login, passwd);
            //st = con.createStatement();

        } catch (Exception e) {
            System.out.println(e.getMessage());
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
}
