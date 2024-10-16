//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Daniil Auhustsinovich on 16.10.24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITests: XCTestCase {
    func testExample() throws {
        let app = XCUIApplication()
        let system = XCUIApplication(bundleIdentifier: "com.apple.springboard")

        app.launch()
        app.staticTexts["Login Later"].tap()

        system.alerts.firstMatch.buttons["Allow Once"].tap()

        app.tables.staticTexts["Romanov"].tap()
        app.collectionViews.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()

        let tableNumberField = app.textFields["tableNumberTextField"]

        tableNumberField.tap()
        tableNumberField.typeText("3")

        app.buttons["Select table"].tap()

        app.collectionViews.staticTexts["Call a waiter"].tap()

        let waiterAlert = app.alerts["The waiter is on his way"]
        waiterAlert.buttons["Bring a menu"].tap()

        let gotItAlert = app.alerts["Got it!"]

        XCTAssert(gotItAlert.waitForExistence(timeout: 2), "Got it alert is not present")
    }
}
