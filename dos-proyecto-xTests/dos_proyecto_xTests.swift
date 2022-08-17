//
//  dos_proyecto_xTests.swift
//  dos-proyecto-xTests
//
//  Created by Lisbaldy de Jesus on 24/05/2022.
//

import XCTest
@testable import proyecto_x

class dos_proyecto_xTests: XCTestCase {
    var sut: NumberOperations!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        sut = NumberOperations()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
    }
    
    func testSumNumbersMethod() throws {
        // Arrange - given
        let numberOne = 2;
        let numberTwo = 4;
        let expected = 5;
        
        // Act - when
        let result = sut.sumNumbers(numberOne, numberTwo);
        
        // Assert - then
        XCTAssertEqual(result, expected, "Result value is incorrect compared to expected value");
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
