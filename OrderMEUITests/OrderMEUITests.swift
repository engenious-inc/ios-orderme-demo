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

    // MARK: - CHALLENGE ONE

    func testChallengeOne() throws {
        let app = XCUIApplication()
        let system = XCUIApplication(bundleIdentifier: "com.apple.springboard")

        app.launch()
        app.staticTexts["Login Later"].tap()

        system.alerts.firstMatch.buttons["Allow Once"].tap()

        app.tables.staticTexts["Burger"].tap()
        app.collectionViews.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()

        let tableNumberField = app.textFields["tableNumberTextField"]

        tableNumberField.tap()
        tableNumberField.typeText("5")

        app.buttons["Select table"].tap()

        app.collectionViews.staticTexts["Call a waiter"].tap()

        let waiterAlert = app.alerts["The waiter is on his way"]
        waiterAlert.buttons["Bring a menu"].tap()

        let gotItAlert = app.alerts["Got it!"]

        XCTAssert(gotItAlert.waitForExistence(timeout: 2), "Got it alert is not present")
    }

    // MARK: - CHALLENGE TWO

    func testChallengeTwo() throws {
        let app = XCUIApplication()
        let system = XCUIApplication(bundleIdentifier: "com.apple.springboard")

        app.launch()
        app.staticTexts["Login Later"].tap()

        system.alerts.firstMatch.buttons["Allow Once"].tap()
        app.tables.staticTexts["Ocean Seafood"].tap()
        app.collectionViews.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()

        let tableNumberField = app.textFields["tableNumberTextField"]

        tableNumberField.tap()
        tableNumberField.typeText("1")

        app.buttons["Select table"].tap()
        app.collectionViews.staticTexts["Call a waiter"].tap()

        let waiterAlert = app.alerts["The waiter is on his way"]
        waiterAlert.buttons["Clean the table"].tap()

        let gotItAlert = app.alerts["Got it!"]

        XCTAssert(gotItAlert.waitForExistence(timeout: 2), "Got it alert is not present")

        gotItAlert.buttons["OK"].tap()
        app.collectionViews.cells["Menu"].tap()
        app.staticTexts["Pasta"].tap()

        let plusButton = app.buttons.element(matching: XCUIElement.ElementType.button, identifier: "plusButton")
        plusButton.tap()
        plusButton.tap()

        let backButton = app.buttons["Back 50"]
        backButton.tap()
        backButton.tap()

        app.collectionViews.staticTexts["Call a waiter"].tap()
        waiterAlert.buttons["Call a hookah man"].tap()

        XCTAssert(gotItAlert.waitForExistence(timeout: 2), "Got it alert is not present")
    }
}
