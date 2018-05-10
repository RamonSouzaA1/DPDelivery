/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ramon
 */
public class FuncionarioEntregador extends Funcionario{
    private List<Entregador> entregadores;

    public List<Entregador> getEntregadores() {
        return entregadores;
    }

    public void setEntregadores(List<Entregador> entregadores) {
        this.entregadores = entregadores;
    }
    
    
    public FuncionarioEntregador(Funcionario proximoFuncionario){
        listaFuncao.add(RolTarefas.getInstance().getFuncaoEntregar());
        this.setProximoFuncionario(proximoFuncionario);
        this.descricaoCargo = this.getDescricaoCargo();
    }

    @Override
    public String getDescricaoCargo() {
        return "Faz entregas das encomendas.";
    }
}
