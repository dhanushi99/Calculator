//
//  Calculator.swift
//  Calculator
//
//  Created by user202327 on 9/30/21.
//  Copyright © 2021 user202327. All rights reserved.
//

import Foundation
class Calculator{
    var values = [String]()
    func  push(s: String){
        values.append(s)
        print(values)
    }

    func calc() -> Int {
        var num1 = 0
        var num2 = 0
        var calResult = 0
        for stringIndex in 0...(values.count-1)
        {
        
            if( values[stringIndex] == "+" ){
   
                if num1 == 0 && num2 == 0{
                num1 = Int(values[stringIndex-1])!
                num2 = Int(values[stringIndex+1])!
                calResult = num1 + num2
                num1 = calResult
                }
                else
                {
                num2 = Int(values[stringIndex+1])!
                calResult = num1 + num2
                num1 = calResult
                }
            }
     
            if( values[stringIndex] == "-" ){
                if num1 == 0 && num2 == 0{
                num1 = Int(values[stringIndex-1])!
                num2 = Int(values[stringIndex+1])!
                calResult = num1 - num2
                num1 = calResult
                }
                else
                {
                    num2 = Int(values[stringIndex+1])!
                    calResult = num1 - num2
                    num1 = calResult
                }
            }
            if( values[stringIndex] == "*" ){
                if num1 == 0 && num2 == 0{
                num1 = Int(values[stringIndex-1])!
                num2 = Int(values[stringIndex+1])!
                calResult = num1 * num2
                num1 = calResult
                }
                else
                {
              num2 = Int(values[stringIndex+1])!
                calResult = num1 * num2
                num1 = calResult
                }
            }
   
            if( values[stringIndex] == "/" ){
                if num1 == 0 && num2 == 0{
                  num1 = Int(values[stringIndex-1])!
                  num2 = Int(values[stringIndex+1])!
                  calResult = num1 / num2
                  num1 = calResult
                  }
                  else
                  {
                num2 = Int(values[stringIndex+1])!
                  calResult = num1 / num2
                  num1 = calResult
                  }
            }
       }
    
        values.removeAll()
        return calResult
    }
    func checkValues() -> Bool {
    var operatorIndex = 1
        var numIndex = 0
    if values[0] == "+" && values[0] == "-" && values[0] == "*" && values[0] == "/"
    {
    values.removeAll()
        return false
    }
    for index in 1...(values.count-1){
    if( values[index] == "+" ){
    if operatorIndex == index-1 || operatorIndex == index+1 {
    values.removeAll()
    return false
    }
    else
    {
    operatorIndex = index
        continue
        }}
     if( values[index] == "-" ){
    if operatorIndex == index-1 || operatorIndex == index+1 {
    values.removeAll()

    return false
    }
    else
    {
    operatorIndex = index
        continue
    }
        }
    if( values[index] == "*" ){
    if operatorIndex == index-1 || operatorIndex == index+1 {
    values.removeAll()
    return false
    }
    else
    {
    operatorIndex = index
        continue
    }
        }
     if( values[index] == "/" ){
    if operatorIndex == index-1 || operatorIndex == index+1 {
    values.removeAll()
    return false
    }
    else
    {
    operatorIndex = index
        continue
        }
        
        }
    if( values[index] == "=" ){
    return false
        }
    else{
    if numIndex == index-1 ||    numIndex == index+1 {
    values.removeAll()
    return false
    }
        
        else
    {
    numIndex = index
        continue
    }
        }
        
        }
        return true
    }
    func clean() {
    values.removeAll() }
}
