import XCTest

import swigitTests

var tests = [XCTestCaseEntry]()
tests += swigitTests.allTests()
XCTMain(tests)
