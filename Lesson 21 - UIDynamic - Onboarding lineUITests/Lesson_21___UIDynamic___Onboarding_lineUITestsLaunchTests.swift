//
//  Lesson_21___UIDynamic___Onboarding_lineUITestsLaunchTests.swift
//  Lesson 21 - UIDynamic - Onboarding lineUITests
//
//  Created by Валентин Ремизов on 19.03.2023.
//

import XCTest

final class Lesson_21___UIDynamic___Onboarding_lineUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

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
