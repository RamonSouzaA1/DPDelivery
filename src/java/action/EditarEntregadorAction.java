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
import model.Entregador;
import persistence.EntregadorDAO;

/**
 *
 * @author Ramon
 */
public class EditarEntregadorAction implements Action {

    public EditarEntregadorAction() {
    }

    @Override
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nome = request.getParameter("txtNome");
        String situacao = request.getParameter("txtSituacao");
        //chave estrangeira
        int id_veiculo = Integer.parseInt(request.getParameter("txtId_veiculo"));
        if (nome.equals("") || situacao.equals((""))) {
            response.sendRedirect("index.jsp");
        } else {
            try {
                EntregadorDAO entregadorDAO = new EntregadorDAO();
                Entregador veiculo = new Entregador();
                veiculo = entregadorDAO.obterEntregador(id);
                entregadorDAO.editar(veiculo, nome, situacao, id_veiculo);
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
