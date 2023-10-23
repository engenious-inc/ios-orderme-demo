//
//  BaseTest.swift
//  OrderMEUITests
//
//  Created by AP on 10/23/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {

    lazy var app = XCUIApplication()
    lazy var system = XCUIApplication(bundleIdentifier: "com.apple.springboard")

    func deleteApp() {
        app.terminate()
        system.icons["OrderMe"].wait().press(forDuration: 1.3)
        system.buttons["Remove App"].wait().tap()
        system.buttons["Delete App"].wait().tap()
        system.buttons["Delete"].wait().tap()
    }
}
