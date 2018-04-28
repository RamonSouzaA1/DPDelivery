/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.Estado;

import model.Encomenda;

/**
 *
 * @author victor.domingos
 */
public class EncomendaEstadoPedido implements EncomendaEstado {

    public EncomendaEstadoPedido() {
        
    }

    @Override
    public String getEstado() {
        return "Pedido";
    }

    @Override
    public String finalizar() {
        return "Pode ser finalizado";
    }

    @Override
    public String enviar() {
        return "Pode ser enviado";
    }

    @Override
    public String cancelar() {
        return "Pode ser cancelado";
    }

    @Override
    public String pedir() {
        return "Não pode ser pedido";
    }
    
}
