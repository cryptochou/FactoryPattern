//
//  PizzaStore.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

class PizzaStore {
    
    var factory: SimplePizzaFactory
    
    init(factory: SimplePizzaFactory) {
        self.factory = factory;
    }
    
    func orderPizza(type: String) -> Pizza? {
        
        let pizza = self.factory.createPizzaByType(type: type)
        
        pizza?.prepare();
        pizza?.bake();
        pizza?.cut();
        pizza?.box();
        
        return pizza;
    }
}
