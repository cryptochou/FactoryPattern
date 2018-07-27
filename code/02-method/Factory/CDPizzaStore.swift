//
//  CDPizzaStore.swift
//  Factory
//
//  Created by zhouke on 2018/7/27.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class CDPizzaStore: PizzaStore {
    func createPizzaByType(type: String) -> Pizza? {
        var pizza: Pizza?
        
        if type == "cheese" {
            pizza = CDCheesePizza()
        } else if type == "greek" {
            pizza = CDGreekPizza();
        } else if type == "pepperoni" {
            pizza = CDPepperoniPizza();
        }
        
        return pizza;
    }
}
