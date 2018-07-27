//
//  PizzaStore.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

protocol PizzaStore {
    func orderPizza(type: String) -> Pizza?
    func createPizzaByType(type: String) -> Pizza?
}

extension PizzaStore {
    func orderPizza(type: String) -> Pizza? {
        let pizza = self.createPizzaByType(type: type)
        
        pizza?.prepare();
        pizza?.bake();
        pizza?.cut();
        pizza?.box();
        
        return pizza;
    }
}
