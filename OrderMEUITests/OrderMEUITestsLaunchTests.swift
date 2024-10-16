//
//  OrderMEUITestsLaunchTests.swift
//  OrderMEUITests
//
//  Created by Daniil Auhustsinovich on 16.10.24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
