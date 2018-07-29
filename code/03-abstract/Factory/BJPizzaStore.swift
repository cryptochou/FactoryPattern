//
//  BJPizzaStore.swift
//  Factory
//
//  Created by zhouke on 2018/7/27.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class BJPizzaStore: PizzaStore {
    func createPizzaByType(type: String) -> Pizza? {
        var pizza: Pizza?
        let ingredientFactory = BJPizzaIngredientFactory()
        
        if type == "cheese" {
            pizza = CheesePizza(ingredientFactory: ingredientFactory)
            pizza!.name = "北京起司披萨"
        } else if type == "pepperoni" {
            pizza = PepperoniPizza(ingredientFactory: ingredientFactory);
            pizza!.name = "北京烤香肠披萨"
        }
        
        return pizza;
    }
}
