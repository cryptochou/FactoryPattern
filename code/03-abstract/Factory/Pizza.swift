//
//  Pizza.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class Pizza {
    var name: String = ""
    var cheese: Cheese?
    var pepperoni: Pepperoni?
    
    var ingredientFactory: PizzaIngredientFactory

    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
    }
    
    func prepare() {
        assert(true, "Pizza 子类必须重写 prepare 方法")
    }
    
    func bake() {
        print("350 度下烘烤 25 分钟...")
    }
    func cut() {
        print("切片...")
    }
    func box() {
        print("装盒...")
    }
}

class CheesePizza: Pizza {
    override func prepare() {
        print("Preparing " + name)
        self.cheese = self.ingredientFactory.creatCheese()
    }
}

class PepperoniPizza: Pizza {
    override func prepare() {
        print("Preparing " + name)
        self.pepperoni = self.ingredientFactory.creatPepperoni()
    }
}

