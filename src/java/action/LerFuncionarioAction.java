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
import model.FuncionarioArquitetoMoveis;
import model.FuncionarioEntregador;
import model.FuncionarioEstagiario;

/**
 *
 * @author Ramon
 */
public class LerFuncionarioAction implements Action {

    public LerFuncionarioAction() {
    }
    

    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        try {
            FuncionarioArquitetoMoveis arquiteto = new FuncionarioArquitetoMoveis(null);
            
            FuncionarioEntregador entregadorTeste = new FuncionarioEntregador(arquiteto);
            
            FuncionarioEstagiario montadorTeste = new FuncionarioEstagiario(entregadorTeste);
            
            request.setAttribute("arquiteto", arquiteto);
            request.setAttribute("montador", montadorTeste);
            request.setAttribute("entregador", entregadorTeste);
            
            RequestDispatcher view = request.getRequestDispatcher("funcionarioConsulta.jsp");
            view.forward(request, response);
        
        } catch (ServletException ex) {
            Logger.getLogger(LerEntregadorAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
