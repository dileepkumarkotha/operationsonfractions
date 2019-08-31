//
//  main.swift
//  OperationsOnFractions
//
//  Created by dkotha on 8/28/19.
//  Copyright © 2019 personal. All rights reserved.
//

import Foundation

func run() {
    /// Command line arguments count
    let argc = CommandLine.argc

    /// Command line arguments represented as array of strings
    let arguments = CommandLine.arguments

    /// We should have a minimum of 5 arguments including the application name
    /// Ex: ./OperationsOnFractions ? 1/2 + 3_1/4
    guard argc >= 5 else {
        print("Minimum number of input arguments required for the application is 4. Please enter 4 or more input arguments")
        return
    }

    /// The input for arithmetic operation starts after "?" symbol
    guard let index = arguments.firstIndex(of: "?") else {
        print("Operands should be preceded by a '? '")
        return
    }

    guard let result = ArithmeticOperations.perform(operation: arguments[index+2], operandOne: arguments[index+1], operandTwo: arguments[index+3]) else {
        print("Unable to perform the operation")
        return
    }
    
    /// Print the result to the command line
    print(result)
}

/// This is the first function call in main and so it gets executed first when we run the application
run()
