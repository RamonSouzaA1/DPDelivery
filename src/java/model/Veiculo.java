/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.SQLException;
import java.util.Observable;
import persistence.VeiculoDAO;

/**
 *
 * @author Ramon
 * 
 * Construtor vazio, somente com id, com todos os atributos mas com situacao = Disponivel (padrao) e com todos os atributos.
 * Todos os getters e setters implementados
 * 
 */
public class Veiculo extends Observable{
    private int id;
    private String placa;
    private String marca;
    private String modelo;
    public VeiculoEstado estado;

    public Veiculo() {
    }
    
    

    public Veiculo(int id) {
        this.id = id;
    }

    public Veiculo(int id, String placa, String marca, String modelo) {
        this.id = id;
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.estado = new VeiculoEstadoDisponivel();
    }
    
    public Veiculo(int id, String placa, String marca, String modelo, String situacao) {
        this.id = id;
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        switch(situacao)
        {
            case "Disponivel":
                this.estado = new VeiculoEstadoDisponivel();
                break;
            case "Em desuso":
                this.estado = new VeiculoEstadoEmDesuso();
                break;
            case "Em serviço":
                this.estado = new VeiculoEstadoEmServico();
                break;
            case "Oficina":
                this.estado = new VeiculoEstadoOficina();
                break;
        }
    }

    public Veiculo(String placa, String marca, String modelo, String situacao) {
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        switch(situacao)
        {
            case "Disponivel":
                this.estado = new VeiculoEstadoDisponivel();
                setChanged();
                notifyObservers();
                break;
            case "Em desuso":
                this.estado = new VeiculoEstadoEmDesuso();
                break;
            case "Em serviço":
                this.estado = new VeiculoEstadoEmServico();
                break;
            case "Oficina":
                this.estado = new VeiculoEstadoOficina();
                break;
        }
    }

    public Veiculo(String placa, String marca, String modelo) {
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.estado = new VeiculoEstadoDisponivel();
        setChanged();
        notifyObservers();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    
    public void setEstado(VeiculoEstado estado){
        
        this.estado = estado;
        
    }
    
    public String getEstado() {
        return estado.getEstado();
    }
}