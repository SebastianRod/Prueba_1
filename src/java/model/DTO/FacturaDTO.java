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
public class FacturaDTO {
    int id_factura;
    String fecha_factura;
    int valor_factura;
    int cliente_id_cliente;
    int vehiculo_id_vehiculo;
    int usuario_id_usuario;

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public String getFecha_factura() {
        return fecha_factura;
    }

    public void setFecha_factura(String fecha_factura) {
        this.fecha_factura = fecha_factura;
    }

    public int getValor_factura() {
        return valor_factura;
    }

    public void setValor_factura(int valor_factura) {
        this.valor_factura = valor_factura;
    }

    public int getCliente_id_cliente() {
        return cliente_id_cliente;
    }

    public void setCliente_id_cliente(int cliente_id_cliente) {
        this.cliente_id_cliente = cliente_id_cliente;
    }

    public int getVehiculo_id_vehiculo() {
        return vehiculo_id_vehiculo;
    }

    public void setVehiculo_id_vehiculo(int vehiculo_id_vehiculo) {
        this.vehiculo_id_vehiculo = vehiculo_id_vehiculo;
    }

    public int getUsuario_id_usuario() {
        return usuario_id_usuario;
    }

    public void setUsuario_id_usuario(int usuario_id_usuario) {
        this.usuario_id_usuario = usuario_id_usuario;
    }
    
    
}
