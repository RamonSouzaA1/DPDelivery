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
import model.ClienteCNPJ;
import model.Encomenda;
import persistence.ClienteCnpjDAO;
import persistence.ClienteDAO;
import persistence.EncomendaDAO;

/**
 *
 * @author victor.domingos
 */
public class EditarEncomendaAction implements Action{
    
    public EditarEncomendaAction() {
    }

    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
        int id = Integer.parseInt(request.getParameter("txtId"));
        String descricao = request.getParameter("txtDescricao");
        int peso = Integer.parseInt(request.getParameter("txtPeso"));
        String tipoCliente = request.getParameter("txtTipoCliente");
        int id_cliente = Integer.parseInt(request.getParameter("txtId_cliente"));
        String logradouro = request.getParameter("txtLogradouro");
        int numero = Integer.parseInt(request.getParameter("txtNumero"));
        String bairro = request.getParameter("txtBairro");
        String cep = request.getParameter("txtCep");
        int id_entregador = Integer.parseInt(request.getParameter("txtId_entregador"));
        String data_pedido = request.getParameter("txtData_pedido");
        String data_entrega = request.getParameter("txtData_entrega");
        String situacao = request.getParameter("txtSituacao");
        double valor;
                       
        if (descricao.equals("") || logradouro.equals("")) {
            response.sendRedirect("index.jsp");
        } else{
            try{
                if(tipoCliente.equals("CPF"))
                {
                    ClienteDAO clienteDAO = new ClienteDAO();
                    Cliente cliente = new Cliente();
                    cliente = clienteDAO.obterCliente(id_cliente);
                    valor = cliente.obterCalculoFrete(peso);
                } else 
                {
                    ClienteCnpjDAO clienteDAO = new ClienteCnpjDAO();
                    ClienteCNPJ cliente = new ClienteCNPJ();
                    cliente = clienteDAO.obterCliente(id_cliente);
                    valor = cliente.obterCalculoFrete(peso);
                }
                EncomendaDAO encomendaDAO = new EncomendaDAO();
                Encomenda encomenda = new Encomenda();
                encomenda = encomendaDAO.obterEncomenda(id);
                encomendaDAO.editar(encomenda, descricao, peso, id_cliente, logradouro, numero, valor, bairro,
                        cep, id_entregador, situacao, data_pedido, data_entrega);

                response.sendRedirect("sucesso.jsp");
            } catch(SQLException ex)
            {
                response.sendRedirect("erro.jsp");
                ex.printStackTrace();
            } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        }
    }

    
    
}
