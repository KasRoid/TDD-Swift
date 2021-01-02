//
//  TDD_StarterTests.swift
//  TDD-StarterTests
//
//  Created by Kas Song on 1/2/21.
//

import XCTest
@testable import TDD_Starter

class TDD_StarterTests: XCTestCase {
    
    var calculatorBrain = CalculatorBrain()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test10DivideBy5MustBe2() {
        calculatorBrain.divideTwoNumbers(dividend: 10,
                                         divisor: 5,
                                         completion: { result, error in
                                            XCTAssert(result == 2, "Result must be 2")
                                         })
    }
    
    func test10DivideBy0MustBeNil() {
        calculatorBrain.divideTwoNumbers(dividend: 10,
                                         divisor: 0,
                                         completion: { result, error in
                                            XCTAssertNil(result, "Result must be nil")
                                            XCTAssert(error?.domain == "Error dividing by Zero", "Error Message should be Error dividing by Zero")
                                         })
    }
    
    func testDivisionTime() {
        measure {
            self.calculatorBrain.divideTwoNumbers(dividend: 10,
                                                  divisor: 2,
                                                  completion: { result, error in
                                                    
                                                  })
        }
    }
}
