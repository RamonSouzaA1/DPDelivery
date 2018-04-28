/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import controller.Action;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Encomenda;
import model.Estado.EncomendaEstadoPedido;

/**
 *
 * @author victor.domingos
 */
public class EncomendaEstadoAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        Encomenda encomenda = new Encomenda();

        encomenda.setBairro("São Pedro");
        
        encomenda.setEstado(new EncomendaEstadoPedido());
        
        String bairro = encomenda.getBairro();
        String estado = encomenda.getEstado();

        request.setAttribute("bairro", bairro);
        //request.setAttribute("estado", estado);

        RequestDispatcher view = request.getRequestDispatcher("estadoEncomenda.jsp");
        try {
            view.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(EncomendaEstadoAction.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
