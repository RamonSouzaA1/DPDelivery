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
public class RolTarefas {
    private static RolTarefas rolTarefas = new RolTarefas();
    private FuncaoEntregar funcaoEntregar;
    private FuncaoMontar funcaoMontar;
    
    public static RolTarefas getInstance() {
        return rolTarefas;
    }

    public static void setRolTarefas(RolTarefas rolTarefas) {
        RolTarefas.rolTarefas = rolTarefas;
    }

    public FuncaoEntregar getFuncaoEntregar() {
        return funcaoEntregar;
    }

    public void setFuncaoEntregar(FuncaoEntregar funcaoEntregar) {
        this.funcaoEntregar = funcaoEntregar;
    }

    public FuncaoMontar getFuncaoMontar() {
        return funcaoMontar;
    }

    public void setFuncaoMontar(FuncaoMontar funcaoMontar) {
        this.funcaoMontar = funcaoMontar;
    }

    public RolTarefas() {
        this.funcaoEntregar = new FuncaoEntregar();
        this.funcaoMontar = new FuncaoMontar();
    }
    
    
    
}
