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
public interface EncomendaEstado {
           
    public String getEstado();
            
    public String finalizar();
            
    public String enviar();
    
    public String cancelar();
    
    public String pedir();
}
