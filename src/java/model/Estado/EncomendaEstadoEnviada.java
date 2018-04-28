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
public class EncomendaEstadoEnviada implements EncomendaEstado {

    @Override
    public String getEstado() {
        return "Enviado";
    }

    @Override
    public String finalizar() {
        return "Não pode ser finalizado";
    }

    @Override
    public String enviar() {
        return "Não pode ser enviado";
    }

    @Override
    public String cancelar() {
        return "Pode ser cancelado";
    }

    @Override
    public String pedir() {
        return "Não pode ser enviado";
    }
    
}
