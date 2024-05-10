//
//  02String.swift
//  swift-basic
//
//  Created by guanfei on 2024/5/8.
//

import Foundation

func str() {
    let softWrappedQuotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin, \
    please your Majesty?" he asked.
    
    "Begin at the beginning," the King said gravely, "and go on \
    till you come to the end; then stop."
    """
    print(softWrappedQuotation)
    
    let exclamationMark: Character = "!"
    
    let threeMoreDoubleQuotationMarks = #"""
    Here are three more double quotes: """  \#n haha
    """#
    print(threeMoreDoubleQuotationMarks)
    
    //初始化空字符串
    var emptyString = ""
    var es = String()
    
    //字符串可变性
    var s = "a"
    s += "b"
    
    let cs = "a"
//    cs += "b"
    
    /**
     字符
     */
    
    //单个字符
    var c = "a"
    
    for c in "abcd!" {
        print(c)
    }
    
    var carr: [Character] = ["a", "b", "c"]
    var ss = String(carr)
    print(ss)
    
    var str2 = "aaaa"
    str2 = str2.appending("naaa")
    print(str2)
    
    //字符串插值
    let var1 = 3
    print("haha \(var1)")
    
    print("----------------------------1")
    
    var word = "cafe"
    print("the number of characters in \(word) is \(word.count)")
    // 打印输出“the number of characters in cafe is 4”

    word += "\u{301}"    // 拼接一个重音，U+0301
    print(word)

    print("the number of characters in \(word) is \(word.count)")
    // 打印输出“the number of characters in café is 4”
    
    
    print("----------------------------2")
    
//    let greeting = "Guten Tag!"
    let greeting = "阿凡达了伐熬了个列是否"
    // print(greeting[0]) 不能这样获取， greeting[index对象]
    print(greeting.count)
    print(greeting.startIndex)
    print(greeting.endIndex)
    print(greeting[greeting.startIndex])
    // G
    print(greeting[greeting.index(before: greeting.endIndex)])
    // !
    print(greeting[greeting.index(after: greeting.startIndex)])
    // u
    let index = greeting.index(greeting.startIndex, offsetBy: 7)
    print(greeting[index])
    // a
    
    
    print("--------索引越界")
//    greeting[greeting.endIndex] // error
//    greeting.index(after: greeting.endIndex)  error
    
    
    print("--------遍历")
    for index in greeting.indices {
       print("\(greeting[index])", terminator: " ")
    }
    
    
    print("--------插入删除")
    var welcome = "hello"
    welcome.insert(contentsOf: "!", at: welcome.endIndex)
    print(welcome)
    
    welcome = "hello, scott!"
//    welcome.remove(at: welcome.index(before: welcome.endIndex)) //单个字符
    let range = welcome.index(welcome.endIndex, offsetBy: -8) ..< welcome.endIndex //范围移除
    welcome.removeSubrange(range)
    
    print(welcome)
}
