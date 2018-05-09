/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Montador;
import persistence.MontadorDAO;

/**
 *
 * @author Ramon
 */
public class EditarMontadorAction implements Action {

    public EditarMontadorAction() {
    }

    @Override
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nome = request.getParameter("txtNome");
        String situacao = request.getParameter("txtSituacao");
        if (nome.equals("") || situacao.equals((""))) {
            response.sendRedirect("index.jsp");
        } else {
            try {
                MontadorDAO montadorDAO = new MontadorDAO();
                Montador montador = new Montador();
                montador = montadorDAO.obterMontador(id);
                montadorDAO.editar(montador, nome, situacao);
                response.sendRedirect("sucesso.jsp");
            } catch (SQLException ex) {
                response.sendRedirect("erro.jsp");
                ex.printStackTrace();
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            }
        }
    }

}
