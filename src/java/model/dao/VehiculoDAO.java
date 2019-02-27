/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author juan.b.rodriguez
 */
public interface VehiculoDAO {
    public Map<String, String> consultaVehiculo(String id_vehiculo);
}
