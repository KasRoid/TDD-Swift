//
//  CalculatorBrain.swift
//  TDD-Starter
//
//  Created by Kas Song on 1/2/21.
//

import Foundation

class CalculatorBrain: NSObject {
    func divideTwoNumbers(dividend: Int, divisor: Int) -> Float? {
        if divisor == 0 {
            return nil
        }
        return Float(dividend / divisor)
    }
}
