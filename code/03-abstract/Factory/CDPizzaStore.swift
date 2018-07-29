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
        let ingredientFactory = CDPizzaIngredientFactory()
        
        if type == "cheese" {
            pizza = CheesePizza(ingredientFactory: ingredientFactory)
            pizza!.name = "成都起司披萨"
        } else if type == "pepperoni" {
            pizza = PepperoniPizza(ingredientFactory: ingredientFactory);
            pizza!.name = "成都烤香肠披萨"
        }
        
        return pizza;
    }
}
