//
//  new_target_tests.swift
//  new_target_tests
//
//  Created by Lisbaldy de Jesus on 26/05/2022.
//

import XCTest
@testable import proyecto_x

class new_target_tests: XCTestCase {
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

    func testExampleSumNumber() throws {
        // Arrange - given
        let numberOne = 2;
        let numberTwo = 4;
        let expected = 6;
        
        // Act - when
        let result = sut.sumNumbers(numberOne, numberTwo);
        
        // Assert - then
        XCTAssertEqual(result, expected, "Result value is incorrect compared to expected value");
    }
}
