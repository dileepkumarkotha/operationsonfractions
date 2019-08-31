//
//  String+Extension.swift
//  OperationsOnFractions
//
//  Created by dkotha on 8/28/19.
//  Copyright © 2019 personal. All rights reserved.
//

import Foundation

extension String {
    /// Converts operand string to a Fraction object
    ///
    /// - Returns: Fraction object
    func toFraction() -> Fraction? {
        /// If the operand string contains '_' then it is a mixed fraction
        if self.contains("_") {
            let components = self.components(separatedBy: "_")
            guard components.count == 2,
                let wholeNumber = Int(components[0]),
                let properFraction = components[1].getSimpleFraction() else {
                    return nil
            }
            return Fraction(properFraction.denominator*wholeNumber+properFraction.numerator, properFraction.denominator)
        } else if self.contains("/") {
            return self.getSimpleFraction()
        } else if let integerValue = Int(self) {
            return Fraction(numerator: integerValue)
        }
        return nil
    }
    
    /// Checks if string represents simple fraction then converts the string to a Fraction object
    ///
    /// - Returns: Fraction object
    func getSimpleFraction() -> Fraction? {
        let fractionComponents = self.components(separatedBy: "/")
        guard fractionComponents.count == 2,
            let numerator = Int(fractionComponents[0]),
            let denominator = Int(fractionComponents[1]) else {
                return nil
        }
        return Fraction(numerator, denominator)
    }
}
