/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.Map;
import model.DTO.ClienteDTO;

/**
 *
 * @author juan.b.rodriguez
 */
public interface ClienteDAO {
    public Map<String, String> consultaCliente(String tipoDocumento, String id_cliente);
    public int crearCliente(int id_cliente,String tipo_documento_cliente, String nombres_cliente, String apellidos_cliente, int telefono_cliente, String correo_cliente, String direccion_cliente);
    public ClienteDTO consultaClienteREST (String tipoDocumento, String id_cliente);
}
