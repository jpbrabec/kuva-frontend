
//
//  KuvaUITests.swift
//  KuvaUITests
//
//  Created by Matthew on 2/16/17.
//  Copyright © 2017 kuva. All rights reserved.
//

import XCTest

class KuvaUITests: XCTestCase {
    let app = XCUIApplication()
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
    
    func testEmailFieldExists() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //let app = XCUIApplication()
        let emailfield = app.textFields["Email"]
        XCTAssert(emailfield.exists)
    }
    
    func testPasswordFieldExists() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //let app = XCUIApplication()
        let passwordfield = app.secureTextFields["Password"]
        XCTAssert(passwordfield.exists)
    }
    
    func testIfButtonExists() {
        //let app = XCUIApplication()
        let button = app.buttons["Sign In"]
        XCTAssert(button.exists)
    }
    
    func testIfForgotPasswordExists() {
        let button = app.buttons["Forgot Your Password?"]
        XCTAssert(button.exists)
        
    }
    
    func testIfLogoLoads() {
        let logo = app.images["kuva-logo"]
        XCTAssert(logo.exists)
    }
    
    func testIfRegisterButtonExists() {
        let button = XCUIApplication().buttons["Don't have an account?"]
        XCTAssert(button.exists)

    }
}