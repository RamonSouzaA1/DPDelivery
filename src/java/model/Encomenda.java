/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import model.Estado.EncomendaEstado;
import model.Estado.EncomendaEstadoPedido;

/**
 *
 * @author Ramon
 * 
 * Construtor vazio, somente com id e com todos os atributos.
 * Todos os getters e setters implementados
 * 
 */
public class Encomenda {
    private int id;
    private String descricao;
    private int peso;
    private int id_cliente;
    private String logradouro;
    private int numero;
    private String bairro;
    private String cep;
    private int id_entregador;
    private double valor;
    private String situacao;
    private String data_pedido;
    private String data_entrega;
    private EncomendaEstado estado;

    public Encomenda() {
        
        this.estado = new EncomendaEstadoPedido();
        
    }
    
    public void setEstado(EncomendaEstado estado){
        
        this.estado = estado;
        
    }
    
    public String getEstado(){
        return this.estado.getEstado();
    }
    
    
    public String finalizar(){
        
        return estado.finalizar();
    }
    
    public String enviar(){
        
        return estado.enviar();
                
    }
    
    public String cancelar(){
        
        return estado.cancelar();
                
    }
    
    public String pedir(){
        
        return estado.pedir();
                
    }

    public Encomenda(int id) {
        this.id = id;
    }

    public Encomenda(int id, String descricao, int peso, int id_cliente, String logradouro, int numero, double valor, String bairro, String cep, int id_entregador, String situacao, String data_pedido, String data_entrega) {
         this.id = id;
        this.descricao = descricao;
        this.peso = peso;
        this.id_cliente = id_cliente;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cep = cep;
        this.id_entregador = id_entregador;
        this.valor = valor;
        this.situacao = situacao;
        this.data_pedido = data_pedido;
        this.data_entrega = data_entrega;
    }
    
    public Encomenda( String descricao, int peso, int id_cliente, String logradouro, int numero, double valor, String bairro, String cep, int id_entregador, String data_pedido, String data_entrega) {
        this.descricao = descricao;
        this.peso = peso;
        this.id_cliente = id_cliente;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cep = cep;
        this.id_entregador = id_entregador;
        this.valor = valor;
        this.situacao = "Expedida";
        this.data_pedido = data_pedido;
        this.data_entrega = data_entrega;
    }

    public Encomenda(String descricao, int peso, int id_cliente, String logradouro, int numero, double valor, String bairro, String cep, int id_entregador, String situacao, String data_pedido, String data_entrega) {
        this.descricao = descricao;
        this.peso = peso;
        this.id_cliente = id_cliente;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cep = cep;
        this.id_entregador = id_entregador;
        this.valor = valor;
        this.situacao = situacao;
        this.data_pedido = data_pedido;
        this.data_entrega = data_entrega;
    }

    

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    public int getId_entregador() {
        return id_entregador;
    }

    public void setId_entregador(int id_entregador) {
        this.id_entregador = id_entregador;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public String getData_pedido() {
        return data_pedido;
    }

    public void setData_pedido(String data_pedido) {
        this.data_pedido = data_pedido;
    }

    public String getData_entrega() {
        return data_entrega;
    }

    public void setData_entrega(String data_entrega) {
        this.data_entrega = data_entrega;
    }
    
    
}