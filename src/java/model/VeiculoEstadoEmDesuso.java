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
public class VeiculoEstadoEmDesuso implements VeiculoEstado{

    @Override
    public String getEstado() {
        return "Desuso";
    }

    @Override
    public String disponivel(Veiculo v) {
        return "Veícculo não está disponivel";
    }

    @Override
    public String emServico(Veiculo v) {
        return "Veícculo não está em serviço";
    }

    @Override
    public String oficina(Veiculo v) {
        return "Veículo não pode ir para oficina";
    }

    @Override
    public String emDesuso(Veiculo v) {
        return "Veícculo já está em desuso";
    }
    
}
