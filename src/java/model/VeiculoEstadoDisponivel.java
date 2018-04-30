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
public class VeiculoEstadoDisponivel implements VeiculoEstado{

    @Override
    public String getEstado() {
        return "Veículo Estado Disponível";
    }

    @Override
    public String disponivel(Veiculo v) {
        return "Veiculo já está disponível.";
    }

    @Override
    public String emServico(Veiculo v) {
        v.setEstado(new VeiculoEstadoEmServico());
        return "Veículo está em serviço";
    }

    @Override
    public String oficina(Veiculo v) {
        v.setEstado(new VeiculoEstadoOficina());
        return "Veículo está na oficina";
    }

    @Override
    public String emDesuso(Veiculo v) {
        v.setEstado(new VeiculoEstadoEmDesuso());
        return "Veículo está em desuso";
    }
    
}
