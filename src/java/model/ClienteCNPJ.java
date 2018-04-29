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
public class ClienteCNPJ extends BaseCliente implements Desconto{
        
    public ClienteCNPJ() {
    }

    public ClienteCNPJ(int id) {
        this.id = id;
    }

    public ClienteCNPJ(int id, String nome, String logradouro, int numero, String bairro, String cep, String telefone, String celular) {
        this.id = id;
        this.nome = nome;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cep = cep;
        this.telefone = telefone;
        this.celular = celular;
        this.desconto = this.obterDesconto();
    }

    public ClienteCNPJ(String nome, String logradouro, int numero, String bairro, String cep, String telefone, String celular) {
        this.nome = nome;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cep = cep;
        this.telefone = telefone;
        this.celular = celular;
        this.desconto = this.obterDesconto();
    }

    @Override
    public int obterDesconto() {
        return 20;
    }

}
