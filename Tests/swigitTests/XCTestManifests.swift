import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(swigitTests.allTests),
    ]
}
#endif

func run(_ args: [String]) throws -> String? {
    return try runCommand(tool: "swigit", args: args)
}
