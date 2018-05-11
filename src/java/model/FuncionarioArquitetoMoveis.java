/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author victor.domingos
 */
public class FuncionarioArquitetoMoveis extends Funcionario{
    private List<Arquiteto> arquitetos;

    public List<Arquiteto> getArquitetos() {
        return arquitetos;
    }

    public void setArquitetos(List<Arquiteto> arquitetos) {
        this.arquitetos = arquitetos;
    }
    
    public FuncionarioArquitetoMoveis(Funcionario proximoFuncionario){
        listaFuncao.add(RolTarefas.getInstance().getFuncaoProjetar());
        this.setProximoFuncionario(proximoFuncionario);
        this.descricaoCargo = this.getDescricaoCargo();
    }

    @Override
    public String getDescricaoCargo() {
        return "Faz o projeto dos móveis.";
    }
}
