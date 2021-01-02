//
//  CalculatorBrain.swift
//  TDD-Starter
//
//  Created by Kas Song on 1/2/21.
//

import Foundation

class CalculatorBrain: NSObject {
    func divideTwoNumbers(dividend: Int, divisor: Int, completion: (Float?, NSError?) -> Void) {
        if divisor == 0 {
            let error = NSError(domain: "Error dividing by Zero", code: 1, userInfo: nil)
            return completion(nil, error)
        }
        return completion(Float(dividend / divisor), nil)
    }
}
