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
import model.Cliente;
import persistence.ClienteDAO;

/**
 *
 * @author victor.domingos
 */
public class EditarClienteAction implements Action {

    public EditarClienteAction() {
    }

    @Override
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nome = request.getParameter("txtNome");
        String loradouro = request.getParameter("txtLogradouro");
        
        int numero = Integer.parseInt(request.getParameter("txtNumero"));
        
        
        String bairro = request.getParameter("txtBairro");
        String cep = request.getParameter("txtCep");
        String telefone = request.getParameter("txtTelefone");
        String celular = request.getParameter("txtCelular");
        if (nome.equals("") || loradouro.equals((""))) {
            response.sendRedirect("index.jsp");
        } else {
            try {
                ClienteDAO clienteDAO = new ClienteDAO();
                Cliente cliente = new Cliente();
                cliente = clienteDAO.obterCliente(id);
                clienteDAO.editar(cliente, nome, loradouro, numero, bairro, cep, telefone, celular);
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
