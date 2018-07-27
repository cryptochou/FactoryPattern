//
//  BJPizzaFactory.swift
//  Factory
//
//  Created by zhouke on 2018/7/27.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class BJPizzaFactory: SimplePizzaFactory {
    func createPizzaByType(type: String) -> Pizza? {
        var pizza: Pizza?;
        
        if type == "cheese" {
            pizza = BJCheesePizza()
        } else if type == "greek" {
            pizza = BJGreekPizza();
        } else if type == "pepperoni" {
            pizza = BJPepperoniPizza();
        }
        
        return pizza;
    }
}
