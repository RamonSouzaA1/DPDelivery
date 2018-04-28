package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Encomenda;
import persistence.EncomendaDAO;

public class GravarEncomendaAction implements Action {

    public GravarEncomendaAction() {
    
    }
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
        String descricao = request.getParameter("txtDescricao");
        int peso = Integer.parseInt(request.getParameter("txtPeso"));
        //String peso = request.getParameter("txtPeso");
        //chave
        int id_cliente = Integer.parseInt(request.getParameter("txtId_cliente"));
        String logradouro = request.getParameter("txtLogradouro");
        int numero = Integer.parseInt(request.getParameter("txtNumero"));
        double valor = Double.parseDouble(request.getParameter("txtValor"));
        String bairro = request.getParameter("txtBairro");
        String cep = request.getParameter("txtCep");
        
        int id_entregador = Integer.parseInt(request.getParameter("txtId_entregador"));
        //------------------------------------------------------------------//
        String data_pedido = request.getParameter("txtData_pedido");
        String data_entrega = request.getParameter("txtData_entrega");
        
        if(descricao.equals("")){
            response.sendRedirect("index.jsp");
        } else{
            try{          
                Encomenda encomenda = new Encomenda(descricao, peso, id_cliente, logradouro, numero, valor, bairro,
                        cep, id_entregador, data_pedido, data_entrega);
                EncomendaDAO.getInstance().save(encomenda);
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
