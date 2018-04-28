/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ramon
 * 
 * Construtor vazio, somente com id e com todos os atributos.
 * Todos os getters e setters implementados
 * 
 */
public class Entregador {
    private int id;
    private String nome;
    private String situacao;
    private int id_veiculo;

    public Entregador() {
    }

    public Entregador(int id) {
        this.id = id;
    }

    public Entregador(int id, String nome, String situacao, int id_veiculo) {
        this.id = id;
        this.nome = nome;
        this.situacao = situacao;
        this.id_veiculo = id_veiculo;
    }

    public Entregador(String nome, int id_veiculo) {
        this.nome = nome;
        this.situacao = "Disponível";
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

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public int getId_veiculo() {
        return id_veiculo;
    }

    public void setId_veiculo(int id_veiculo) {
        this.id_veiculo = id_veiculo;
    }
    
    
}
