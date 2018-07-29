//
//  PizzaIngredientFactory.swift
//  Factory
//
//  Created by zhouke on 2018/7/29.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Foundation

protocol PizzaIngredientFactory {
    func createCheese() -> Cheese
    func createPepperoni() -> Pepperoni
}

class BJPizzaIngredientFactory: PizzaIngredientFactory {
    func createCheese() -> Cheese {
        return BJCheese()
    }
    
    func createPepperoni() -> Pepperoni {
        return BJPepperoni()
    }
}

class CDPizzaIngredientFactory: PizzaIngredientFactory {
    func createCheese() -> Cheese {
        return CDCheese()
    }
    
    func createPepperoni() -> Pepperoni {
        return CDPepperoni()
    }
}
