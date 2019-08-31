//
//  ArithmeticOperationsTests.swift
//  ArithmeticOperationsTests
//
//  Created by dkotha on 8/29/19.
//  Copyright © 2019 personal. All rights reserved.
//

import XCTest
@testable import OperationsOnFractions

class ArithmeticOperationsTests: XCTestCase {

    func testAdditionOfTwoFractions() {
        let result = ArithmeticOperations.perform(operation: "+", operandOne: "2_3/8", operandTwo: "9/8")
        XCTAssertEqual(result, "3_1/2", "result of addition")
    }

    func testAdditionOfWholeNumberAndFraction() {
        let result = ArithmeticOperations.perform(operation: "+", operandOne: "2", operandTwo: "1/3")
        XCTAssertEqual(result, "2_1/3", "result of addition")
    }

    func testSubtractionOfTwoFractions() {
        let result = ArithmeticOperations.perform(operation: "-", operandOne: "1/2", operandTwo: "1/4")
        XCTAssertEqual(result, "1/4", "result of subtraction")
    }

    func testSubtractionOfWholeNumberAndFraction() {
        let result = ArithmeticOperations.perform(operation: "-", operandOne: "1", operandTwo: "1/4")
        XCTAssertEqual(result, "3/4", "result of subtraction")
    }

    func testMultiplicationOfTwoFractions() {
        let result = ArithmeticOperations.perform(operation: "*", operandOne: "1/2", operandTwo: "3_3/4")
        XCTAssertEqual(result, "1_7/8", "result of multiplication")
    }

    func testMultiplicationOfWholeNumberAndFraction() {
        let result = ArithmeticOperations.perform(operation: "*", operandOne: "3", operandTwo: "1_1/4")
        XCTAssertEqual(result, "3_3/4", "result of multiplication")
    }

    func testDivisionOfTwoFractions() {
        let result = ArithmeticOperations.perform(operation: "/", operandOne: "3/5", operandTwo: "3_3/4")
        XCTAssertEqual(result, "4/25", "result of division")
    }

    func testDivisionOfWholeNumberAndFraction() {
        let result = ArithmeticOperations.perform(operation: "/", operandOne: "5", operandTwo: "3/5")
        XCTAssertEqual(result, "8_1/3", "result of division")
    }
}
