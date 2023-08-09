//
//  MainWindow.swift
//  t1-Calculator
//
//  Created by Derek Harne on 8/6/23.
//

import SwiftUI

struct MainWindow: View {
    
    @StateObject var calc=Calc()
    
    var body: some View {
        VStack {
            HStack {
                Text("\(calc.display)")
            }
            HStack {
                Button("AC") {
                    calc.allClear()
                }
                Button("+/-") {
                    calc.plusMinus()
                }
                Button("%") {
                    calc.percentage()
                }
                Button("÷") {
                    calc.operation("÷")
                }
            }
            HStack {
                Button("7") {
                    calc.input("7")
                }
                Button("8") {
                    calc.input("8")
                }
                Button("9") {
                    calc.input("9")
                }
                Button("X") {
                    calc.operation("X")
                }
            }
            HStack {
                Button("4") {
                    calc.input("4")
                }
                Button("5") {
                    calc.input("5")
                }
                Button("6") {
                    calc.input("6")
                }
                Button("-") {
                    calc.operation("-")
                }
            }
            HStack {
                Button("1") {
                    calc.input("1")
                }
                Button("2") {
                    calc.input("2")
                }
                Button("3") {
                    calc.input("3")
                }
                Button("+") {
                    calc.operation("+")
                }
            }
            HStack {
                Button("0") {
                    calc.input("0")
                }
                Button(".") {
                    calc.input(".")
                }
                Button("=") {
                    calc.calculate()
                }
            }
        }
    }
}

struct MainWindow_Previews: PreviewProvider {
    static var previews: some View {
        MainWindow()
    }
}
