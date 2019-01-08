//
//  LoginUITest.swift
//  LoginAppUITests
//
//  Created by Anastasia on 1/7/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import XCTest

class LoginForm: BasicTestCase {
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    func testPresentedElements() {
        let app = TestApplication()
        
        XCTContext.runActivity(named: "Check for all elements") { _ in
            let elements = [
                app.passwordField,
                app.loginButton,
                app.loginField,
                app.loginLabel
            ]
            let failedElements = elements.failedElements()
            AssertArrayIsEmpty(failedElements)
        }
        
        XCTContext.runActivity(named: "Check login with creds") { _ in
            app.loginField.tap()
            app.loginField.typeText("Anastasia")
            app.passwordField.tap()
            app.passwordField.typeText("12345")
            app.loginButton.tap()
            // so we could understand that we were loged in
            XCTAssertTrue(app.successScreen.logoutButton.exists)
        }
    }
    
    func testIncorrectCreds() {
        
        let app = TestApplication()
        XCTContext.runActivity(named: "Check login with incorrect creds") { _ in
            app.loginField.tap()
            app.loginField.typeText("Slava")
            app.passwordField.tap()
            app.passwordField.typeText("666")
            app.loginButton.tap()
            // so we could understand that we weren't able to see success window
            XCTAssertFalse(app.successScreen.logoutButton.exists)
        }
    }
    
}
