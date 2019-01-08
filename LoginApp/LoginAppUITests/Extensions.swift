//
//  Extensions.swift
//  LoginAppUITests
//
//  Created by Anastasia on 1/7/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import Foundation
import XCTest

extension Array where Element: XCUIElement {
    
    func failedElements() -> [Element] {
        return self.filter { $0.exists == false }
    }
}

func AssertArrayIsEmpty(_ array: [XCUIElement]) {
    XCTAssertTrue(array.isEmpty, "\(array.map { $0.description }) elements are not present")
}
