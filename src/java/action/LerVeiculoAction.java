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
import model.Veiculo;
import persistence.VeiculoDAO;

public class LerVeiculoAction implements Action{
    
    public void execute(HttpServletRequest request,
            HttpServletResponse response) throws IOException{
            try{
                List<Veiculo> veiculos = new ArrayList<Veiculo>();
                veiculos = VeiculoDAO.getInstance().obterVeiculos();
                request.setAttribute("veiculos", veiculos);
                
                List<Veiculo> veiculosDisponiveis = new ArrayList<Veiculo>();
                for(int i = 0; i < veiculos.size(); i++)
                {
                    Veiculo v = veiculos.get(i);
                    if(v.getEstado().equals("Disponível"))
                    {
                        veiculosDisponiveis.add(v);
                    }
                }
                request.setAttribute("veiculosDisponiveis", veiculosDisponiveis);
                request.setAttribute("MensagemEntregador", BufferSingleton.getInstance().getEntregadoresSingleton());
                RequestDispatcher view = request.getRequestDispatcher("veiculoConsulta.jsp");
                view.forward(request, response);
            } catch(SQLException ex)
            {
                response.sendRedirect("erro.jsp");
                ex.printStackTrace();
            } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (ServletException ex) {
            Logger.getLogger(LerVeiculoAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
