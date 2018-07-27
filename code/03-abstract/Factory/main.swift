//
//  main.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Foundation

let bjStore = BJPizzaStore()
let bjPizza = bjStore.orderPizza(type: "cheese")

let cdStore = CDPizzaStore()
let cdPizza = cdStore.orderPizza(type: "cheese")

