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
import model.BufferSingleton;
import model.Entregador;
import persistence.EntregadorDAO;

public class LerEntregadorAction implements Action{
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
            try{
                List<Entregador> entregadores = new ArrayList<Entregador>();
                entregadores = EntregadorDAO.getInstance().obterEntregadores();
                                                
                request.setAttribute("entregadores", entregadores);
                RequestDispatcher view = request.getRequestDispatcher("entregadorConsulta.jsp");
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
