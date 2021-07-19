//
//  TestSampleTests.swift
//  TestSampleTests
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import XCTest
import Quick

@testable import TestSample

class StubViewModel: ViewModelProtocol {
    @Published var lastQuery: String?
    @Published var shouldShowErrorAlert: Bool = false
    @Published var moreSearchResultsExist: Bool = false
    
    func search(query: String) {
        
    }
    
}

class TestSampleTests: XCTestCase {

    override class func setUp() {

    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
        
        //XCTContxtは使えない
        XCTAssertThrowsError(try divide(3, y: 0)) { error in
            let error = error as? OperationError
            XCTAssertEqual(error, OperationError.divisionByZero)
        }
        
    }

    func testViewModel() throws {
        
        let view = ContentView.init(viewModel: StubViewModel())
        debugPrint(view)
        
        
        
    }
    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
