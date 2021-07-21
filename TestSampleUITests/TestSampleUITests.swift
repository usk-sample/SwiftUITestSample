//
//  TestSampleUITests.swift
//  TestSampleUITests
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import XCTest

@testable import TestSample

class TestSampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let texts = app.staticTexts
        debugPrint("static texts : \(texts.count)")
        
        debugPrint("----- boundBy: 0")
        debugPrint(texts.element(boundBy: 0))
        debugPrint("----- boundBy: 1")
        debugPrint(texts.element(boundBy: 1))
        
        debugPrint(app.staticTexts["count_label"])
        debugPrint(app.staticTexts["count_label"].label)

        XCTAssertEqual(app.staticTexts["count_label"].label, "0")
        
        debugPrint(app.buttons.firstMatch)
        app.buttons.firstMatch.tap()
        XCTAssertEqual(app.staticTexts["count_label"].label, "1")
        
        add(XCTAttachment.init(screenshot: app.screenshot()))
        add(XCTAttachment.init(screenshot: app.staticTexts["count_label"].screenshot()))

    }
    
    func testNavigationLink() throws {
        //画面遷移のテスト
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["next_button"].tap()
        add(XCTAttachment.init(screenshot: app.screenshot()))
        
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
