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
        let result = calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 5)
        XCTAssert(result == 2, "Result must be 2")
    }
    
    func test10DivideBy0MustBeNil() {
        let result = calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 0)
        XCTAssertNil(result, "Result must be nil")
    }
    
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
