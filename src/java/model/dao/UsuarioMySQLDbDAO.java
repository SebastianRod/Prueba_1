/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author juan.b.rodriguez
 */
public class UsuarioMySQLDbDAO implements UsuarioDAO{

    @Override
    public int validaUsuario(String user, String pwd) {
        MySQLDbDAOFactory mydb = new MySQLDbDAOFactory();
        int resultado = 0;
        Connection con = mydb.MySQLDbDAOFactory();
        PreparedStatement st;
        ResultSet rs;
        try{
            st = con.prepareStatement("select * from usuario where id_usuario = '"+user+"' and contraseña_usuario = '"+pwd+"';"); 
            rs = st.executeQuery();
            while(rs.next()){
                resultado = 1;
            }
            st.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return resultado;
    }
    
}