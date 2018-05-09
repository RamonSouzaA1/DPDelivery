/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Victor
 */
public class BufferSingleton {
    
    private static BufferSingleton uniqueInstance;
    
    List<String> entregadoresSingleton;

    public List<String> getEntregadoresSingleton() {
        return entregadoresSingleton;
    }

    public void setEntregadoresSingleton(List<String> entregadoresSingleton) {
        this.entregadoresSingleton = entregadoresSingleton;
    }
    
    
    //Ou seja, um construtor privado não permite que a classe
    //seja instanciada a não ser que seja feito por ela mesmo
	private BufferSingleton() {
            entregadoresSingleton = new ArrayList<String>();
	}

	public static synchronized BufferSingleton getInstance() {
		if (uniqueInstance == null)
			uniqueInstance = new BufferSingleton();

		return uniqueInstance;
	}
    
}
