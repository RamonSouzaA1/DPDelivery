package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Montador;
import persistence.MontadorDAO;

public class ApagarMontadorAction implements Action{
    
    public ApagarMontadorAction(){
    }

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("textId");
        if (id.equals("")) {
            response.sendRedirect("index.jsp");
        } else {
            Montador montador = new Montador(Integer.parseInt(id));
            try {
                MontadorDAO.getInstance().delete(montador);
                response.sendRedirect("sucesso.jsp");
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } catch (SQLException ex) {
                response.sendRedirect("erro.jsp?erro=" + ex);
                ex.printStackTrace();
            }
        }
    }
}
