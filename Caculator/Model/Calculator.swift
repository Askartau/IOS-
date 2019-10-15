//
//  Calculator.swift
//  Caculator
//
//  Created by Askar Serikkhanov on 9/18/19.
//  Copyright © 2019 Askar Serikkhanov. All rights reserved.
//

import Foundation

//enum Operation: Int {
//    case minus = 100
//    case plus = 101
//    case multiply = 102
//    case divide = 103
//}

class Calculator {
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
    
    
    func clear() {
        numberOnScreen = 0;
        previousNumber = 0;
        performingMath = false;
        operation = 0;
    }
    
    func eval() -> String{
        var label: String = "";
        if operation == 12{
            label = String(previousNumber / numberOnScreen)
        }
        else if operation == 13{
            label = String(previousNumber * numberOnScreen)
        }
        else if operation == 14{
            label = String(previousNumber - numberOnScreen)
        }
        else if operation == 15{
            label = String(previousNumber + numberOnScreen)
        }
        return label;
    }
    
}

    

