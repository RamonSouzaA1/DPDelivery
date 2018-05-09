/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Observable;
import java.util.Observer;

/**
 *
 * @author Ramon
 * 
 * Construtor vazio, somente com id e com todos os atributos.
 * Todos os getters e setters implementados
 * 
 */
public class Entregador extends Situacao implements Observer{
    private int id;
    private String nome;
    private int id_veiculo;
    private Observable veiculo;

    public Entregador() {
    }

    public Entregador(int id) {
        this.id = id;
    }
    
    public Entregador(Observable veiculo) {
        this.veiculo = veiculo;
        veiculo.addObserver(this);
    }

    public Entregador(int id, String nome, String situacao, int id_veiculo) {
        this.id = id;
        this.nome = nome;
        this.setSituacao(situacao);
        this.id_veiculo = id_veiculo;
    }

    public Entregador(String nome, int id_veiculo) {
        this.nome = nome;
        this.setSituacao("Disponível");
        this.id_veiculo = id_veiculo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getId_veiculo() {
        return id_veiculo;
    }

    public void setId_veiculo(int id_veiculo) {
        this.id_veiculo = id_veiculo;
    }

    @Override
    public String getDados() {
        return this.getSituacao();
    }
    
    public Observable getVeiculo(){
        return veiculo;
    }
    
    public void setVeiculo(Observable veiculo){
        this.veiculo = veiculo;
    }
    
    @Override
    public void update(Observable veiculoSubject, Object arg) {
        if(veiculoSubject instanceof Veiculo){
            Veiculo veiculo = (Veiculo) veiculoSubject;
            BufferSingleton.getInstance().getEntregadoresSingleton().add("O Entregador " + this.nome + " está com veículo: "
                    + veiculo.getPlaca());
                                           
        }
    }
    
    
}
