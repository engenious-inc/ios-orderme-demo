//
//  XCUITestExtension.swift
//  OrderMEUITests
//
//  Created by AP on 10/23/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    func wait(timeout: TimeInterval = 5.0) -> Self {
        if self.waitForExistence(timeout: timeout) == false {
            XCTFail("UI Element doesn't exist")
        }
        
        return self
    }
}
