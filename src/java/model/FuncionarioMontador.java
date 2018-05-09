/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author Ramon
 */
public class FuncionarioMontador extends Funcionario{
    private List<Montador> montadores;

    public List<Montador> getMontadores() {
        return montadores;
    }

    public void setMontadores(List<Montador> montadores) {
        this.montadores = montadores;
    }
    
    public FuncionarioMontador(Funcionario proximoFuncionario){
        listaFuncao.add(RolTarefas.getInstance().getFuncaoMontar());
        this.setProximoFuncionario(proximoFuncionario);
    }

    @Override
    public String getDescricaoCargo() {
        return "Montador";
    }
}
