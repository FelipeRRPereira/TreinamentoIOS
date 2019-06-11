//
//  Calculator.swift
//  Calculadora
//
//  Created by treinamento on 28/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

class Calculator {
    func xSquared(number: Int) -> String {
        let xSquar = pow(Decimal(number),2)
        return "\(xSquar)"
    }
    
    func squareRoot(number: Int) -> String {
        let res = sqrt(Double(number))
        return "\(res)"
    }
    
    func operations(operation: String, number1: Int, number2: Int) -> String {
        switch operation {
        case "÷":
            return "\(number1 / number2)"
        case "x":
            return "\(number1 * number2)"
        case "+":
            return "\(number1 + number2)"
        case "-":
            return "\(number1 - number2)"
        default:
            return "0"
        }
    }
}
