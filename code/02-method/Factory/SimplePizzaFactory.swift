//
//  SimplePizzaFactory.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class SimplePizzaFactory {
    
    func createPizzaByType(type: String) -> Pizza? {
        var pizza: Pizza?;
        
        if type == "cheese" {
            pizza = CheesePizza()
        } else if type == "greek" {
            pizza = GreekPizza();
        } else if type == "pepperoni" {
            pizza = PepperoniPizza();
        }
        
        return pizza;
    }
}
