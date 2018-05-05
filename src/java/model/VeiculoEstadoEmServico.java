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
public class VeiculoEstadoEmServico implements VeiculoEstado{

    @Override
    public String getEstado() {
        return "Em serviço";
    }

    @Override
    public String disponivel(Veiculo v) {
        v.setEstado(new VeiculoEstadoDisponivel());
        return "Veiculo está disponivel.";
    }

    @Override
    public String emServico(Veiculo v) {
        return "Veiculo ja está em serviço.";
    }

    @Override
    public String oficina(Veiculo v) {
        
        return "Veiculo nãopode ir para oficina.";
    }

    @Override
    public String emDesuso(Veiculo v) {
        
        return "Veiculo não pode entrar em desuso.";
    }
    
}
