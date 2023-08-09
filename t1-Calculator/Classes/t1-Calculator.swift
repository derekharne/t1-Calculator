//
//  t1-Calculator.swift
//  t1-Calculator
//
//  Created by Derek Harne on 8/7/23.
//

import Foundation

class Calc: ObservableObject {
    @Published var display: String = "0"
    @Published var valueOne: Double = 0
    @Published var valueTwo: Double = 0
    @Published var calcOperator: String = ""
    @Published var calcResult: Double = 0
    
    var resetDisplay: Bool = false
    var previousResult: Double = -0.0
    
    func input(_ Int: String) {
        let currentDisplay = display
        
        if currentDisplay.contains(".") && Int == "." {
            return
        }
        
        if currentDisplay == "0" || resetDisplay == true {
            display = Int
            resetDisplay = false
        }
        else {
            display = currentDisplay + Int
        }
    }
    
    func allClear() {
        display = "0"
        calcOperator = ""
        calcResult = 0
        valueOne = 0
        valueTwo = 0
        resetDisplay = false
    }
    
    func operation(_ operation: String) {
        let inputOne = Double(display) ?? 0
        valueOne = inputOne
        print("VAR: valueONe = \(valueOne)")
        calcOperator = operation
        resetDisplay = true
    }
    
    func calculate() {
        
        if calcOperator == "" {
            display = "ERROR"
            resetDisplay = true
            return
        }
        
        let inputTwo = Double(display) ?? 0
        valueTwo = inputTwo
        
        switch(calcOperator) {
        case("+"):
            let result = valueOne + valueTwo
            display = String(result)
            resetDisplay = true
        case("-"):
            let result = valueOne - valueTwo
            display = String(result)
            resetDisplay = true
        case("X"):
            let result = valueOne * valueTwo
            display = String(result)
            resetDisplay = true
        case("÷"):
            let result = valueOne / valueTwo
            display = String(result)
            resetDisplay = true
        default:
            return
        }
    }
    
    func percentage() {
        let currentDisplay = display
        if currentDisplay.contains(".") {
            let result = Double(currentDisplay) ?? 0
            let convertedResult = result * 100
            display = String(convertedResult)
        }
        else {
            let result = Double(currentDisplay) ?? 0
            let convertedResult = result * 0.01
            display = String(convertedResult)
            
        }
    }
    
    func plusMinus() {
        let currentDisplay = Double(display) ?? 0
        let plusMinus = -currentDisplay
        display = String(plusMinus)
    }
}
