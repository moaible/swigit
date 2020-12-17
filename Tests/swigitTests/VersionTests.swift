//
//  VersionTests.swift
//  swigitTests
//
//  Created by moaible on 2020/12/17.
//

import Foundation
import XCTest
import swigit

final class VersionTests: XCTestCase {

    func testCommandVersion() throws {
        let version = "0.0.1"
        let expectedResult = "swigit version \(version)"
        XCTAssertEqual(try swigitTests.run(["version"]), "\(expectedResult)\n")
        XCTAssertEqual(try swigitTests.run(["--version"]), "\(expectedResult)\n")
    }

    static var allTests = [
        ("testCommandVersion", testCommandVersion),
    ]
}
