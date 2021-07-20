//
//  TestSampleTests.swift
//  TestSampleTests
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import XCTest

import Quick
import ViewInspector

@testable import TestSample

extension ContentView: Inspectable { }

class TestSampleTests: XCTestCase {

    override class func setUp() {

    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testViewModel() throws {
        
                
        try XCTContext.runActivity(named: "static string") { _ in
            let view = ContentView(viewModel: .init(count: 0))
            let text = try view.inspect().vStack().text(0).string()
            XCTAssertEqual(text, "Hello, world!")
        }

        try XCTContext.runActivity(named: "dynamic string") { _ in
            let view = ContentView(viewModel: .init(count: 0))
            var count = try view.inspect().vStack().text(1).string()
            XCTAssertEqual(count, "0")
            
            try view.inspect().vStack().button(2).tap()
            count = try view.inspect().vStack().text(1).string()
            XCTAssertEqual(count, "1")
            
            try view.inspect().find(button: "Increment").tap()
            count = try view.inspect().find(viewWithTag: 5).text().string()
            XCTAssertEqual(count, "2")
            
        }
        
        try XCTContext.runActivity(named: "dynamic string with initial value") { _ in
            let view = ContentView(viewModel: .init(count: 5))
            var count = try view.inspect().vStack().text(1).string()
            XCTAssertEqual(count, "5")
            
            try view.inspect().vStack().button(2).tap()
            count = try view.inspect().vStack().text(1).string()
            XCTAssertEqual(count, "6")
        }
        
    }

    func test_パスワードバリデーションの文字数() throws {
        XCTContext.runActivity(named: "数字が２文字以上含まれている場合") { _ in
            XCTContext.runActivity(named: "合計７文字が入力された場合") { _ in
                XCTAssertFalse(validate(password: "abcde12"))
            }
            XCTContext.runActivity(named: "合計８文字が入力された場合") { _ in
                XCTAssertTrue(validate(password: "abcdef12"))
            }
            XCTContext.runActivity(named: "合計９文字が入力された場合") { _ in
                XCTAssertTrue(validate(password: "abcdefg12"))
            }
        }
    }
    
    func testDivide() throws {
        
        try XCTContext.runActivity(named: "normal case") { _ in
            XCTAssertEqual(try divide(4, y: 2), 2)
            XCTAssertEqual(try divide(3, y: 2), 1)
        }
        
        try XCTContext.runActivity(named: "error case") { _ in
            XCTAssertThrowsError(try divide(3, y: 0)) { error in
                let error = error as? OperationError
                XCTAssertEqual(error, OperationError.divisionByZero)
            }
        }
        
    }
    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
