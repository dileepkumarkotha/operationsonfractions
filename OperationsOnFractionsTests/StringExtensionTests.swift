//
//  StringExtensionTests.swift
//  OperationsOnFractionsTests
//
//  Created by dkotha on 8/30/19.
//  Copyright © 2019 personal. All rights reserved.
//

import XCTest

class StringExtensionTests: XCTestCase {

    func testToFractionWithproperFraction() {
        guard let fraction = "3/4".toFraction() else {
            XCTFail("Error converting to fraction")
            return
        }
        XCTAssertEqual(fraction.numerator, 3, "numerator of fraction")
        XCTAssertEqual(fraction.denominator, 4, "denominator of fraction")
    }

    func testToFractionWithMixedNumber() {
        guard let fraction = "5_1/4".toFraction() else {
            XCTFail("Error converting to fraction")
            return
        }
        XCTAssertEqual(fraction.numerator, 21, "numerator of fraction")
        XCTAssertEqual(fraction.denominator, 4, "denominator of fraction")
    }

    func testToFractionWithWholeNumber() {
        guard let fraction = "5".toFraction() else {
            XCTFail("Error converting to fraction")
            return
        }
        XCTAssertEqual(fraction.numerator, 5, "numerator of fraction")
        XCTAssertEqual(fraction.denominator, 1, "denominator of fraction")
    }

    func testToFractionWithInvalidMixedNumber() {
        let fraction = "5__1/4".toFraction()
        XCTAssertNil(fraction, "Fraction object")
    }

    func testGetSimpleFractionWithValidFraction() {
        guard let fraction = "1/2".getSimpleFraction() else {
            XCTFail("Error converting to fraction")
            return
        }
        XCTAssertEqual(fraction.numerator, 1, "numerator of fraction")
        XCTAssertEqual(fraction.denominator, 2, "denominator of fraction")
    }

    func testGetSimpleFractionWithInvalidFraction() {
        let fraction = "3_1/2".getSimpleFraction()
        XCTAssertNil(fraction, "Fraction object")
    }
}
