//
//  00TheBasics.swift
//  demo
//
//  Created by guanfei on 2024/5/8.
//

import Foundation

func basic() {
    //定义变量和常量
    var a = ""
    let b = ""
    
    //类型标识
    var str:String = "foo"
    
    //单行注释
    
    /**
     多行
     注释
     */
    
    //整数分有符号和无符号
    var num = UInt8.max
    var num2 = Int8.max
    
    //浮点数
    var f = Float(1.2)
    var d = 2.22
    
    //元组
//    var tp = (10, "nice")
    var tp = (num: 10, str: "nice")
    print("tp.num = \(tp.num), tp.str = \(tp.str)")
    
    //optional
    var numStr = "123"
    var actualNum = Int(numStr)
    if actualNum != nil {
        print(actualNum) //Optional(123)
    }
    
    //optional bind 值绑定
    var num1: Int? = 10
    if let num1 {
        print(num1) //10
    }
    
    //fallback value 默认值 ??
    var defaultValue: String?  = nil
    var greeting = defaultValue ?? "hello, susan"
    print(greeting)
    
    //Force Unwrapping
//    var num3: Int? = nil
    var num3: Int? = 10
    var num33 = num3!
//    guard let num33 = num3 else {
//        fatalError("The number was invalid")
//    }
    print(num33)
    
    //unwrapping
    var str1: String! = "abc"
    var str2: String = str1 //str2 is String not Optional(String)
    print(str2)
    
   //assert
    assert(1 > 0, "1 > 0")
//    assert(1 < 0, "1 < 0")
    
}
