//
//  main.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Foundation

let bjFactory = BJPizzaFactory()
let bjStore = PizzaStore(factory: bjFactory)
let bjPizza = bjStore.orderPizza(type: "cheese")

let cdFactory = CDPizzaFactory()
let cdStore = PizzaStore(factory: cdFactory)
let cdPizza = cdStore.orderPizza(type: "cheese")

