/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restController;

import model.DTO.ClienteDTO;
import model.dao.DAOFactory;
/**
 *
 * @author juan.b.rodriguez
 */

//@RestController
public class ClienteRestController {
    
    
    /*@POST
    @Path("/consultarCliente")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)*/
    public ClienteDTO consultarCliente(String tipoDocumento, String idCliente){
        DAOFactory pdb = DAOFactory.getDAOFactory(1);
        ClienteDTO cliente = pdb.getClienteDAO().consultaClienteREST(tipoDocumento, idCliente);
        return cliente;
    }
}
