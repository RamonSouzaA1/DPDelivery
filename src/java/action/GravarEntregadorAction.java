package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Entregador;
import persistence.EntregadorDAO;

public class GravarEntregadorAction implements Action {

    public GravarEntregadorAction() {
    
    }
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
        String nome = request.getParameter("txtNome");
        String situacao = request.getParameter("txtSituacao");
        //chave estrangeira
        int id_veiculo = Integer.parseInt(request.getParameter("txtId_veiculo"));
        //realmente precisa desse if
        if(nome.equals("")){
            response.sendRedirect("index.jsp");
        } else{
            try{
                Entregador entregador = new Entregador(nome, situacao, id_veiculo);
                EntregadorDAO.getInstance().save(entregador);
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
