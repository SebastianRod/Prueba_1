/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

//import org.apache.log4j.Logger;

/**
 *
 * @author juan.b.rodriguez
 */
public abstract class DAOFactory {

    //static Logger log = Logger.getLogger(DAOFactory.class);
    public static final int MySQL = 1;

    public abstract UsuarioDAO getUsuarioDAO();
    public abstract VehiculoDAO getVehiculoDAO();
    public abstract ClienteDAO getClienteDAO();
    public abstract FacturaDAO getFacturaDAO();

    public static DAOFactory getDAOFactory(int whichFactory) {
        switch (whichFactory) {
            case MySQL:
                return new MySQLDbDAOFactory();
            default:
                //log.warn("No se envio parametro valido");
                return null;
        }
    }
}
