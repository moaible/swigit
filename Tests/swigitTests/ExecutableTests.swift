import XCTest
import class Foundation.Bundle

extension URL {
    static var products: URL {
        #if os(macOS)
          for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
              return bundle.bundleURL.deletingLastPathComponent()
          }
          fatalError("couldn't find the products directory")
        #else
          return Bundle.main.bundleURL
        #endif
    }
}

enum RunError: Error {
    case notAvailableEnvironment
}

func runCommand(in baseDirectoryURL: URL, tool: String, args: [String]) throws -> String? {
    guard #available(macOS 10.13, *) else {
        throw RunError.notAvailableEnvironment
    }
    let executableURL = baseDirectoryURL.appendingPathComponent(tool)
    let process = Process()
    process.executableURL = executableURL
    process.arguments = args
    let pipe = Pipe()
    process.standardOutput = pipe
    try process.run()
    process.waitUntilExit()
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    return String(data: data, encoding: .utf8)
}

final class ExecutableTests: XCTestCase {

    private func run(_ args: [String]) throws -> String? {
        return try runCommand(in: URL.products, tool: "swigit", args: args)
    }

    func testCommandVersion() throws {
        let version = "0.0.1"
        let expectedResult = "swigit version \(version)"
        XCTAssertEqual(try run(["version"]), "\(expectedResult)\n")
        XCTAssertEqual(try run(["--version"]), "\(expectedResult)\n")
    }

    static var allTests = [
        ("testCommandVersion", testCommandVersion),
    ]
}
