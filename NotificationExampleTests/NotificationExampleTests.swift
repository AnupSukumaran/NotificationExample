//
//  NotificationExampleTests.swift
//  NotificationExampleTests
//
//  Created by Sukumar Anup Sukumaran on 12/11/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import XCTest
@testable import NotificationExample

class NotificationExampleTests: XCTestCase {
    
    func testSquareInt() {
        let value = 3
        let squareValue = value.square()
        
        XCTAssertEqual(squareValue, 9)
    }
    
    func testHelloWorld() {
        var helloWorld: String?
        
        XCTAssertNil(helloWorld)
        
        helloWorld = "Hello world"
        XCTAssertEqual(helloWorld, "Hello world")
    }
    
}


