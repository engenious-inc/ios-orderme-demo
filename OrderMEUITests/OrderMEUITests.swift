//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by AP on 10/23/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITests: XCTestCase {
    
    private lazy var system = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    private lazy var app = XCUIApplication()
    private lazy var loginLaterButton = app.buttons["loginLaterButton"].firstMatch
    private lazy var oceanSeafoodRest = app.tables.cells.staticTexts["Ocean Seafood"].firstMatch
    private lazy var detectTableOption = app.collectionViews.cells["Detect table"].firstMatch
    private lazy var tableNumberField = app.textFields["tableNumberTextField"].firstMatch
    private lazy var selectTableButton = app.buttons["Select table"].firstMatch
    private lazy var callWaiterOption = app.collectionViews.cells["Call a waiter"].firstMatch
    private lazy var alert = app.alerts.firstMatch
    private lazy var bringMenuAlertButton = alert.buttons["Bring a menu"].firstMatch
    private lazy var okAlertButton = alert.buttons["OK"].firstMatch
    
    override func setUpWithError() throws {
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {

    }

    func testBringMenu() throws {
        
        app.launch()
        
        system.buttons["Allow Once"].tap()
        oceanSeafoodRest.wait().tap()
        detectTableOption.wait().tap()
        tableNumberField.wait().tap()
        tableNumberField.wait().typeText("3")
        selectTableButton.wait().tap()
        callWaiterOption.wait().tap()
        bringMenuAlertButton.wait().tap()
        
        XCTAssertEqual(alert.label, "Got it!")
        
        okAlertButton.wait().tap()
    }
}
