//
//  ArithmeticOperations.swift
//  OperationsOnFractions
//
//  Created by dkotha on 8/28/19.
//  Copyright © 2019 personal. All rights reserved.
//

import Foundation

struct ArithmeticOperations {
    
    /// Enum representing the basic arithmetic operations
    private enum ArithmeticOperations: String {
        case addition = "+"
        case subtraction = "-"
        case multiplication = "*"
        case division = "/"
    }
    
    /// Perform basic arithmetic operations
    ///
    /// - Parameters:
    ///   - operation: arithmetic operation to be performed (+, -, *, /)
    ///   - operandOne: left operand fraction
    ///   - operandTwo: right operand fraction
    
    static func perform(operation: String, operandOne: String, operandTwo: String) -> String? {
        guard let firstOperand = operandOne.toFraction(),
            let secondOperand = operandTwo.toFraction()  else {
                print("Operands are not valid fractions")
                return nil
        }
        guard let operation = ArithmeticOperations(rawValue: operation) else {
            print("Unsupported/Invalid operator")
            return nil
        }
        switch operation {
        case .addition:
            let sum = firstOperand + secondOperand
            return sum?.toString()
        case .subtraction:
            let subtraction = firstOperand - secondOperand
            return subtraction?.toString()
        case .multiplication:
            let multiplication = firstOperand * secondOperand
            return multiplication?.toString()
        case .division:
            let division = firstOperand / secondOperand
            return division?.toString()
        }
    }
    
}
