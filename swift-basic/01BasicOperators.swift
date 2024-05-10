//
//  01BasicOperators.swift
//  swift-basic
//
//  Created by guanfei on 2024/5/8.
//

import Foundation


func op() {
    var num = 10 % 3
    print(num)
    
    //range 闭区间
    for i in 1...5 {
        print(i)
    }
    
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for k in 0..<count {
        print(names[k])
    }
    print("----------")
    for name in names[1...] {
        print(name)
    }
    
    
}
