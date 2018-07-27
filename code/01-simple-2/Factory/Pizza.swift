//
//  Pizza.swift
//  Factory
//
//  Created by zhouke on 2018/7/26.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

protocol Pizza {
    func prepare()
    func bake()
    func cut()
    func box()
}

extension Pizza {
    func prepare() {}
    func bake() {}
    func cut() {}
    func box() {}
}

class BJCheesePizza: Pizza {
    
}
class CDCheesePizza: Pizza {
    
}

class BJGreekPizza: Pizza {
    
}
class CDGreekPizza: Pizza {
    
}

class BJPepperoniPizza: Pizza {
    
}
class CDPepperoniPizza: Pizza {
    
}
