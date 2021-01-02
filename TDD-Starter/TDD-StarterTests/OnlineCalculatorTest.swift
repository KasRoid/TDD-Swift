//
//  OnlineCalculatorTest.swift
//  TDD-StarterTests
//
//  Created by Kas Song on 1/2/21.
//

import XCTest
@testable import TDD_Starter

class OnlineCalculatorTest: XCTestCase {
    
    let onlineCalc = OnlineCalculatorBrain()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testRetrieveURLFor10DivideBy2() {
        let url = URL(string: "https://api.mathjs.org/v4/10%2F2")
        let response = onlineCalc.retrieveURLForDivision(dividend: 10, divisor: 2)
        XCTAssert(url == response, "URL is incorrect.")
    }
    
    func testRetrieveURLFor10DivideBy2ShouldFail() {
        let url = URL(string: "www.calcatraz.com/calculator/api?c=20%2F2")
        let response = onlineCalc.retrieveURLForDivision(dividend: 10, divisor: 2)
        XCTAssert(url != response, "URL must not be equal.")
    }
    
    func testCalculateDivisionOnlineFor10DivideBy2ShouldBe5() {
        let expect = expectation(description: "Expected call back from API fail")
        onlineCalc.calculateWithTwoNumbers(dividend: 20,
                                           divisor: 2,
                                           completionHander: { result in
                                            XCTAssert(result == 10, "Response should be 10")
                                            expect.fulfill()
                                           })
        waitForExpectations(timeout: 3, handler: nil)
    }
}
