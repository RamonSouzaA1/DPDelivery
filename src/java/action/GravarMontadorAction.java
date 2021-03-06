package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Estagiario;
import padraoDecorator.Cachaca;
import padraoDecorator.Coquetel;
import padraoDecorator.Refrigerante;
import persistence.MontadorDAO;

public class GravarMontadorAction implements Action {

    public GravarMontadorAction() {
    
    }
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
        String nome = request.getParameter("txtNome");
        int numero = Integer.parseInt(request.getParameter("txtNumero"));      
              
        //realmente precisa desse if
        if(nome.equals("")){
            response.sendRedirect("index.jsp");
        } else{
            try{
                Estagiario montador = new Estagiario(nome);
                MontadorDAO.getInstance().save(montador, numero);
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
