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
public class Montador extends Situacao{
    private int id;
    private String nome;

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

    public Montador() {
    }

    public Montador(int id) {
        this.id = id;
    }

    public Montador(String nome) {
        this.nome = nome;
        this.setSituacao("Disponível");
    }

    public Montador(int id, String nome, String situacao) {
        this.id = id;
        this.nome = nome;
        this.setSituacao(situacao);
    }

    @Override
    public String getDados() {
        return this.getSituacao();
    }
    
}
