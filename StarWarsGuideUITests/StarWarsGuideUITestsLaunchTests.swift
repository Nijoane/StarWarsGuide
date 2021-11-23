//
//  StarWarsGuideUITestsLaunchTests.swift
//  StarWarsGuideUITests
//
//  Created by Nicaely Joane on 28/10/21.
//

import XCTest

class StarWarsGuideUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
