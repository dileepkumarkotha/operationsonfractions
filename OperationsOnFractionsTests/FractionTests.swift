//
//  FractionTests.swift
//  OperationsOnFractionsTests
//
//  Created by dkotha on 8/30/19.
//  Copyright © 2019 personal. All rights reserved.
//

import XCTest

class FractionTests: XCTestCase {

    func testOptionalInitWithValidInput() {
        let fraction = Fraction(16, 6)
        XCTAssertNotNil(fraction, "Fraction object")
        XCTAssertEqual(fraction?.numerator, 8, "numerator of fraction")
        XCTAssertEqual(fraction?.denominator, 3, "denominator of fraction")
    }

    func testOptionalInitWithInvalidInput() {
        let fraction = Fraction(3, 0)
        XCTAssertNil(fraction, "Fraction object")
    }

    func testInitWithNumerator() {
        let fraction = Fraction(numerator: 7)
        XCTAssertNotNil(fraction, "Fraction object")
        XCTAssertEqual(fraction.numerator, 7, "numerator of fraction")
        XCTAssertEqual(fraction.denominator, 1, "denominator of fraction")
    }

    func testAdditionOfTwoProperFractions() {
        guard let leftFraction = Fraction(1, 2),
            let rightFraction = Fraction(3, 4) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let sum = leftFraction + rightFraction else {
            XCTFail("Error adding the fractions")
            return
        }
        XCTAssertEqual(sum.numerator, 5, "numerator of fraction")
        XCTAssertEqual(sum.denominator, 4, "denominator of fraction")
    }

    func testAdditionOfImproperAndProperFraction() {
        guard let leftFraction = Fraction(15, 4),
            let rightFraction = Fraction(3, 4) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let sum = leftFraction + rightFraction else {
            XCTFail("Error adding the fractions")
            return
        }
        XCTAssertEqual(sum.numerator, 9, "numerator of fraction")
        XCTAssertEqual(sum.denominator, 2, "denominator of fraction")
    }

    func testAdditionOfWholeNumberAndFraction() {
        let leftFraction = Fraction(numerator: 5)
        guard let rightFraction = Fraction(3, 4) else {
            XCTFail("Invalid right fraction")
            return
        }
        guard let sum = leftFraction + rightFraction else {
            XCTFail("Error adding the fractions")
            return
        }
        XCTAssertEqual(sum.numerator, 23, "numerator of fraction")
        XCTAssertEqual(sum.denominator, 4, "denominator of fraction")
    }

    func testAdditionOfNegativeAndPositiveFraction() {
        guard let leftFraction = Fraction(-3, 2),
            let rightFraction = Fraction(3, 4) else {
            XCTFail("Invalid right fraction")
            return
        }
        guard let sum = leftFraction + rightFraction else {
            XCTFail("Error adding the fractions")
            return
        }
        XCTAssertEqual(sum.numerator, -3, "numerator of fraction")
        XCTAssertEqual(sum.denominator, 4, "denominator of fraction")
    }

    func testSubtractionOfTwoProperFractions() {
        guard let leftFraction = Fraction(1, 2),
            let rightFraction = Fraction(1, 4) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let subtraction = leftFraction - rightFraction else {
            XCTFail("Error subtracting the fractions")
            return
        }
        XCTAssertEqual(subtraction.numerator, 1, "numerator of fraction")
        XCTAssertEqual(subtraction.denominator, 4, "denominator of fraction")
    }

    func testSubtractionOfImproperAndProperFraction() {
        guard let leftFraction = Fraction(3, 2),
            let rightFraction = Fraction(1, 3) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let subtraction = leftFraction - rightFraction else {
            XCTFail("Error subtracting the fractions")
            return
        }
        XCTAssertEqual(subtraction.numerator, 7, "numerator of fraction")
        XCTAssertEqual(subtraction.denominator, 6, "denominator of fraction")
    }

    func testSubtractionOfWholeNumberAndImproperFraction() {
         let leftFraction = Fraction(numerator: 3)
        guard let rightFraction = Fraction(9, 2) else {
            XCTFail("Invalid fraction inputs")
            return
        }
        guard let subtraction = leftFraction - rightFraction else {
            XCTFail("Error subtracting the fractions")
            return
        }
        XCTAssertEqual(subtraction.numerator, -3, "numerator of fraction")
        XCTAssertEqual(subtraction.denominator, 2, "denominator of fraction")
    }

    func testMultiplicationOfTwoFractions() {
        guard let leftFraction = Fraction(13, 4),
            let rightFraction = Fraction(6, 8) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let multiplication = leftFraction * rightFraction else {
            XCTFail("Error multiplying the fractions")
            return
        }
        XCTAssertEqual(multiplication.numerator, 39, "numerator of fraction")
        XCTAssertEqual(multiplication.denominator, 16, "denominator of fraction")
    }

    func testMultiplicationOfWholeNumberAndFraction() {
        let leftFraction = Fraction(numerator: -5)
        guard let rightFraction = Fraction(3, 4) else {
            XCTFail("Invalid right fraction")
            return
        }
        guard let multiplication = leftFraction * rightFraction else {
            XCTFail("Error multiplying the fractions")
            return
        }
        XCTAssertEqual(multiplication.numerator, -15, "numerator of fraction")
        XCTAssertEqual(multiplication.denominator, 4, "denominator of fraction")
    }

    func testDivisionOfTwoFractions() {
        guard let leftFraction = Fraction(13, 4),
            let rightFraction = Fraction(6, 8) else {
                XCTFail("Invalid fraction inputs")
                return
        }
        guard let division = leftFraction / rightFraction else {
            XCTFail("Error dividing the fractions")
            return
        }
        XCTAssertEqual(division.numerator, 13, "numerator of fraction")
        XCTAssertEqual(division.denominator, 3, "denominator of fraction")
    }

    func testDivisionOfWholeNumberAndFraction() {
        let leftFraction = Fraction(numerator: -3)
        guard let rightFraction = Fraction(3, 4) else {
            XCTFail("Invalid right fraction")
            return
        }
        guard let division = leftFraction / rightFraction else {
            XCTFail("Error dividing the fractions")
            return
        }
        XCTAssertEqual(division.numerator, -4, "numerator of fraction")
        XCTAssertEqual(division.denominator, 1, "denominator of fraction")
    }

    func testToStringWithProperFraction() {
        let convertedString = Fraction(3, 4)?.toString()
        XCTAssertEqual(convertedString, "3/4", "converted string")
    }

    func testToStringWithImproperFraction() {
        let convertedString = Fraction(13, 4)?.toString()
        XCTAssertEqual(convertedString, "3_1/4", "converted string")
    }

    func testToStringWithWholeNumberFraction() {
        let convertedString = Fraction(numerator: -5).toString()
        XCTAssertEqual(convertedString, "-5", "converted string")
    }
}
