/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ramon
 */
public interface VeiculoEstado {
    
    public String getEstado();
    
    public String disponivel(Veiculo v);
    
    public String emServico(Veiculo v);
    
    public String oficina(Veiculo v);
    
    public String emDesuso(Veiculo v);
}
