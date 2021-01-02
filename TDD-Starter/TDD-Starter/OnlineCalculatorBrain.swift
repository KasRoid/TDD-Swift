//
//  OnlineCalculatorBrain.swift
//  TDD-Starter
//
//  Created by Kas Song on 1/2/21.
//

import Foundation

class OnlineCalculatorBrain: NSObject {
    func retrieveURLForDivision(dividend: Int, divisor: Int) -> URL? {
        return URL(string: "www.calcatraz.com/calculator/api?c=\(dividend)%2F\(divisor)")
    }
}
