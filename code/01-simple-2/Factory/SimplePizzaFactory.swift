//
//  SimplePizzaFactory.swift
//  Factory
//
//  Created by zhouke on 2018/7/27.
//  Copyright © 2018年 zhouke. All rights reserved.
//

import Cocoa

protocol SimplePizzaFactory {
    
    func createPizzaByType(type: String) -> Pizza? 

}
