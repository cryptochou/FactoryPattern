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
    var toppings: [String] = [String]()
    
    func prepare() {
        print("正在准备" + name)
        print("揉面...")
        print("添加调料...")
        print("添加顶部作料...")
        for topping in toppings {
            print("\(topping)...")
        }
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

class BJCheesePizza: Pizza {
    override init() {
        super.init()
        name = "北京口味起司披萨"
        toppings.append("起司")
    }
}
class CDCheesePizza: Pizza {
    override init() {
        super.init()
        name = "成都口味起司披萨"
        toppings.append("麻辣味起司")
    }
    
    override func cut() {
        print("切成方形...")
    }
}

class BJPepperoniPizza: Pizza {
    override init() {
        super.init()
        name = "北京口味意大利香肠披萨"
        toppings.append("意大利香肠")
    }
}
class CDPepperoniPizza: Pizza {
    override init() {
        super.init()
        name = "成都口味意大利香肠披萨"
        toppings.append("意大利香肠")
    }
    
    override func cut() {
        print("切成方形...")
    }
}
