/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DTO;

/**
 *
 * @author juan.b.rodriguez
 */
public class VehiculoDTO {
    int id_vehiculo;
    String placa_vehiculo;
    int modelo_vehiculo;
    int precio_vehiculo;

    public int getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(int id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    public String getPlaca_vehiculo() {
        return placa_vehiculo;
    }

    public void setPlaca_vehiculo(String placa_vehiculo) {
        this.placa_vehiculo = placa_vehiculo;
    }

    public int getModelo_vehiculo() {
        return modelo_vehiculo;
    }

    public void setModelo_vehiculo(int modelo_vehiculo) {
        this.modelo_vehiculo = modelo_vehiculo;
    }

    public int getPrecio_vehiculo() {
        return precio_vehiculo;
    }

    public void setPrecio_vehiculo(int precio_vehiculo) {
        this.precio_vehiculo = precio_vehiculo;
    }
}
