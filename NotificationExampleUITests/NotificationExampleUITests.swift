//
//  NotificationExampleUITests.swift
//  NotificationExampleUITests
//
//  Created by Sukumar Anup Sukumaran on 12/11/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import XCTest

class NotificationExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        
        let app = XCUIApplication()
        let button = app.buttons["Button"]
        button.tap()
        
        let tabBarsQuery = app.tabBars
        let itemButton = tabBarsQuery.children(matching: .button).matching(identifier: "Item").element(boundBy: 1)
        itemButton.tap()
        
        let itemButton2 = tabBarsQuery.children(matching: .button).matching(identifier: "Item").element(boundBy: 2)
        itemButton2.tap()
        
        let itemButton3 = tabBarsQuery.children(matching: .button).matching(identifier: "Item").element(boundBy: 0)
        itemButton3.tap()
        button.tap()
        itemButton.tap()
        itemButton2.tap()
        itemButton.tap()
        itemButton3.tap()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
