/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Entregador;
import model.Estagiario;
import padraoDecorator.Cachaca;
import padraoDecorator.Coquetel;
import padraoDecorator.Refrigerante;

/**
 *
 * @author Ramon
 */
public class MontadorDAO {

    private static MontadorDAO instance = new MontadorDAO();

    public MontadorDAO() {
    }

    public static MontadorDAO getInstance() {
        return instance;
    }

    private void closeResources(Connection conn, Statement st) {
        try {
            if (st != null) {
                st.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
        }
    }

    public void save(Estagiario montador, int numero) throws SQLException,
            ClassNotFoundException {
        Connection conn = null;
        Statement st = null;
        
        Coquetel meuCoquetel = new Cachaca();
        
        for(int i = 0; i< numero; i++){
            
            meuCoquetel = new Refrigerante(meuCoquetel);
            
        }
     
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            st.execute("INSERT INTO montador (nome, situacao, refrigerante)"
                    + " VALUES ('" + montador.getNome() + "', '" + montador.getDados() + "', '" + meuCoquetel.getNome() + "')");
        } catch (SQLException e) {
            throw e;
        } finally {
            closeResources(conn, st);
        }
    }

    public List<Estagiario> obterMontadores() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Statement st = null;
        List<Estagiario> montadores = new ArrayList<Estagiario>();
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM montador");
            while (rs.next()) {
                Estagiario montador = new Estagiario(rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getString("situacao"),
                        rs.getString("refrigerante"));
                montadores.add(montador);
            }
        } catch (SQLException e) {
            throw e;
        } finally {
            closeResources(conn, st);
        }
        return montadores;
    }

    public void delete(Estagiario montador) throws SQLException, ClassNotFoundException {
        Connection conn = null;
        Statement st = null;
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            st.execute("DELETE FROM montador WHERE id = " + montador.getId());
        } catch (SQLException e) {
            throw e;
        } finally {
            closeResources(conn, st);
        }
    }

    public Estagiario obterMontador(int id) throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Statement st = null;
        Estagiario montador = null;
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from montador where id = " + id);
            rs.first();
            montador = new Estagiario(rs.getInt("id"),
                    rs.getString("nome"),
                        rs.getString("situacao"),
                        rs.getString("situacao"));

        } catch (SQLException e) {
            throw e;
        } finally {
            closeResources(conn, st);
        }
        return montador;
    }
    
    public void editar(Estagiario montador, String nome, String situacao) throws SQLException, ClassNotFoundException {
        Connection conn = null;
        Statement st = null;
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            String sql = "UPDATE montador SET nome = ?, situacao = ?  WHERE id = ?";
            PreparedStatement comando = conn.prepareStatement(sql);
            comando.setString(1, nome);
            comando.setString(2, situacao);
            comando.setInt(3, montador.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            closeResources(conn, st);
        }
    }
}
