/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.Map;

/**
 *
 * @author juan.b.rodriguez
 */
public interface FacturaDAO {
    public Map<String, String> consultaFactura(String id_factura);
    public int crearFactura(int id_cliente, int id_vehiculo);
}
