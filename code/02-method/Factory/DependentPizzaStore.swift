//
//  DependentPizzaStore.swift
//  Factory
//
//  Created by zhouke on 2018/7/27.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class DependentPizzaStore {
    func orderPizza(style: String, type: String) -> Pizza? {
        var pizza: Pizza?
        if style == "BJ" {
            if type == "cheese" {
                pizza = BJCheesePizza()
            } else if type == "greek" {
                pizza = BJGreekPizza();
            } else if type == "pepperoni" {
                pizza = BJPepperoniPizza();
            }
        } else if style == "CD" {
            if type == "cheese" {
                pizza = CDCheesePizza()
            } else if type == "greek" {
                pizza = CDGreekPizza();
            } else if type == "pepperoni" {
                pizza = CDPepperoniPizza();
            }
        }
        
        pizza?.prepare();
        pizza?.bake();
        pizza?.cut();
        pizza?.box();
        
        return pizza;
    }
}
