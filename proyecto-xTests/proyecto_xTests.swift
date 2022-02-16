//
//  proyecto_xTests.swift
//  proyecto-xTests
//
//  Created by Delfina Fenocchio on 14/09/2021.
//

import XCTest
@testable import proyecto_x

class proyecto_xTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testIsVictoryFunction() {
        // Arrange
        let state =  TicTacToeState()
        state.board.pressed = [CellState.playerX, CellState.playerX, CellState.playerX, .empty, .empty, .empty, .empty, .empty, .empty]
        
        // Act
        let result = state.isVictory([0, 1, 2])
        
        // Assert
        print("state.board.pressed: ", state.board.pressed)
        print("result: ", result)
        XCTAssertTrue(result)
    }
}
