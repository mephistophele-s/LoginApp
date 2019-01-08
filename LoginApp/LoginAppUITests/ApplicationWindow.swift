//
//  LoginAppClass.swift
//  LoginAppUITests
//
//  Created by Anastasia on 1/7/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import Foundation
import XCTest

class TestApplication {
    
    private let app = XCUIApplication()
    private(set) lazy var loginLabel = app.textViews["LoginLabel"]
    private(set) lazy var loginField = app.textFields["UsernameField"]
    private(set) lazy var passwordField = app.textFields["Password"]
    private(set) lazy var loginButton = app.buttons["LoginButton"]
    private(set) lazy var successScreen = SuccessScreen()
    
}

class SuccessScreen {
    
    private let app = XCUIApplication()
    private(set) lazy var logoutButton = app.buttons["Logout"]
}
