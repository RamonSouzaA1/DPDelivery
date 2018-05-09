/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Entregador;
import model.FuncionarioEntregador;
import model.FuncionarioMontador;
import model.Montador;
import persistence.EntregadorDAO;
import persistence.MontadorDAO;

/**
 *
 * @author Ramon
 */
public class LerFuncionarioAction implements Action{
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
            try{
                List<Entregador> entregadores = new ArrayList<Entregador>();
                entregadores = EntregadorDAO.getInstance().obterEntregadores();
                request.setAttribute("entregadores", entregadores);
                List<Montador> montadores = new ArrayList<Montador>();
                montadores = MontadorDAO.getInstance().obterMontadores();
                request.setAttribute("montadores", montadores);
                
                FuncionarioMontador listaMontador = new FuncionarioMontador(null);
                FuncionarioEntregador listaEntregador = new FuncionarioEntregador(listaMontador);
                listaEntregador.setEntregadores(entregadores);
                listaMontador.setMontadores(montadores);
                
                RequestDispatcher view = request.getRequestDispatcher("funcionarioConsulta.jsp");
                view.forward(request, response);
            } catch(SQLException ex)
            {
                response.sendRedirect("erro.jsp");
                ex.printStackTrace();
            } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (ServletException ex) {
            Logger.getLogger(LerEntregadorAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
