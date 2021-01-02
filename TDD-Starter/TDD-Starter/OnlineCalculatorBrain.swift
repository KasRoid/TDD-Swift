//
//  OnlineCalculatorBrain.swift
//  TDD-Starter
//
//  Created by Kas Song on 1/2/21.
//

import Foundation

class OnlineCalculatorBrain: NSObject {
    func retrieveURLForDivision(dividend: Int, divisor: Int) -> URL? {
        return URL(string: "https://api.mathjs.org/v4/?expr=\(dividend)%2F\(divisor)")
    }
    
    func calculateWithTwoNumbers(dividend: Int, divisor: Int, completionHander: @escaping (Float) -> Void) {
        let optionalURL = retrieveURLForDivision(dividend: dividend, divisor: divisor)
        guard let url = optionalURL else { fatalError() }
        URLSession.shared.dataTask(with: url,
                                   completionHandler: { data, response, error in
                                    print(#function, 4)
                                    guard error == nil else { return print(error!)}
                                    guard let response = response as? HTTPURLResponse,
                                          (200..<400).contains(response.statusCode) else {
                                        print("Invalid Response")
                                        return
                                    }
                                    guard let data = data else { return }
                                    let sValue = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                                    guard let result = Float(String(sValue!)) else { return }
                                    completionHander(result)
                                   }
        ).resume()
    }
}
