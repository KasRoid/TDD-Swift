//
//  TDD_StarterUITests.swift
//  TDD-StarterUITests
//
//  Created by Kas Song on 1/3/21.
//

import XCTest

class TDD_StarterUITests: XCTestCase {
    
    let app = XCUIApplication()
    let device = XCUIDevice.shared

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test.
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMainScreen() {
        let labelText = app.staticTexts["Enter Two Numbers"]
        XCTAssertTrue(labelText.exists, "Should be in the main screen")
    }
    
    func testCalculate10divideBy2LabelResult() {
        let text1 = app.textFields.element(boundBy: 0)
        let text2 = app.textFields.element(boundBy: 1)
        text1.tap()
        text1.typeText("10")
        text2.tap()
        text2.typeText("2")
        app.buttons["Calculate"].tap()
        XCTAssertTrue(app.staticTexts["5"].exists, "Result should be displaying 5")
    }

    func testCalculate20divideBy10LabelResult() {
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 0).tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 1).tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Calculate"]/*[[".buttons[\"Calculate\"].staticTexts[\"Calculate\"]",".staticTexts[\"Calculate\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["2"].exists, "Result should be displaying 2")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
