//
//  Fraction.swift
//  OperationsOnFractions
//
//  Created by dkotha on 8/28/19.
//  Copyright © 2019 personal. All rights reserved.
//

import Foundation

/// Fractional values are represented using Fraction object
struct Fraction {
    var numerator: Int
    var denominator: Int
    
    init?(_ numerator: Int, _ denominator: Int) {
        if denominator == 0 {
            return nil
        }
        self.numerator = numerator
        self.denominator = denominator
        simplify()
    }
    
    init(numerator: Int) {
        self.init(numerator, 1)!
    }

    /// Returns the greatest common divisor of two given numbers
    private static func gcd(num1: Int, num2: Int) -> Int {
        if num1 == 0 {
            return num2
        }
        // GCD(a, b) = GCD(-a, b) = GCD(a, -b). So we return the absolute value
        return abs(gcd(num1: num2%num1, num2: num1))
    }

    /// Calculates the least common multiple of two given numbers
    private static func lcm(num1: Int, num2: Int) -> Int {
        return (num1*num2)/gcd(num1: num1, num2: num2)
    }

    static func +(left: Fraction, right: Fraction) -> Fraction? {
        let denominator = lcm(num1: left.denominator, num2: right.denominator)
        let numerator = left.numerator*(denominator/left.denominator) + right.numerator*(denominator/right.denominator)
        return Fraction(numerator, denominator)
    }
    
    static func -(left: Fraction, right: Fraction) -> Fraction? {
        let denominator = lcm(num1: left.denominator, num2: right.denominator)
        let numerator = left.numerator*(denominator/left.denominator) - right.numerator*(denominator/right.denominator)
        return Fraction(numerator, denominator)
    }
    
    static func *(left: Fraction, right: Fraction) -> Fraction? {
        return Fraction(left.numerator*right.numerator, left.denominator*right.denominator)
    }
    
    static func /(left: Fraction, right: Fraction) -> Fraction? {
        guard let rightReciprocal = Fraction(right.denominator, right.numerator) else {
            return nil
        }
        return left*rightReciprocal
    }
}

extension Fraction {
    /// Simplifies the fraction to its lowest possible form
    mutating private func simplify() {
        let commonFactor = Fraction.gcd(num1: self.numerator, num2: self.denominator)
        self.numerator = numerator/commonFactor
        self.denominator = denominator/commonFactor
    }

    /// Converts the Fraction object to true fractional representation string
    ///
    /// - Returns: fractional representation string
    func toString() -> String {
        guard denominator != 1 else {
            return "\(numerator)"
        }
        if numerator > denominator {
            // This is an improper fraction and should be converted to mixed fraction
            // Ex: 15/8 should be expressed as 1_7/8
            return "\(numerator/denominator)_\(numerator%denominator)/\(denominator)"
        } else {
            return "\(numerator)/\(denominator)"
        }
    }
}

extension Fraction: ExpressibleByIntegerLiteral {
    init(integerLiteral value: IntegerLiteralType) {
        self.init(numerator: value)
    }
}
