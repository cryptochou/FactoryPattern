//
//  main.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Foundation

let factory = SimplePizzaFactory()
let pizzaStore = PizzaStore(factory: factory)
let pizza = pizzaStore.orderPizza(type: "cheese")

