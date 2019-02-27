/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.DAOFactory;

/**
 *
 * @author juan.b.rodriguez
 */
public class IngresaVentaController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String id = (String) session.getAttribute("id_vehiculo");
        System.out.println("sesion: " + id);
        String id_vehiculo = request.getParameter("id_vehiculo");
        System.out.println("vehiculo " + id_vehiculo);
        String tipo_documento_cliente = request.getParameter("tipo_documento_cliente");
        String id_cliente = request.getParameter("id_cliente");
        session.setAttribute("tipo_documento_cliente", tipo_documento_cliente);
        session.setAttribute("id_cliente", id_cliente);
        DAOFactory pdb = DAOFactory.getDAOFactory(1);
        Map<String, String> cliente = pdb.getClienteDAO().consultaCliente(tipo_documento_cliente, id_cliente);
        session.setAttribute("cliente", cliente);
        if (!cliente.isEmpty()) {
            request.setAttribute("cliente", cliente);
            RequestDispatcher rd = request.getRequestDispatcher("./jsp/ingresaVenta.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("./jsp/crearCliente.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
