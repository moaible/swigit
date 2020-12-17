//
//  RunTool.swift
//  swigitTests
//
//  Created by moaible on 2020/12/17.
//

import struct Foundation.URL
import class Foundation.Bundle
import class Foundation.Process
import class Foundation.Pipe

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

enum RunToolError: Error {
    case notAvailableEnvironment
}

func runCommand(in baseDirectoryURL: URL = URL.products, tool: String, args: [String]) throws -> String? {
    guard #available(macOS 10.13, *) else {
        throw RunToolError.notAvailableEnvironment
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
