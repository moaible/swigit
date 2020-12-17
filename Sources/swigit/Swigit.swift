//
//  Swigit.swift
//  swigit
//
//  Created by Eimer on 2020/12/17.
//

import Foundation
import Commander

private let applicationVersion = "0.0.1"

public struct Swigit: GitClient, GitCommands {

    // MARK: - Initialize

    public init() {}
    
    // MARK: - Main process
    
    func run(_ arguments: [String]) {
        (hasSubcommand(arguments: arguments) ?
            runBySubcommand() : runByRootCommand()).run()
    }

    private func runByRootCommand() -> CommandType {
        command(
            Flag("version", default: true)
        ) { version in
            if version {
                print(self.version())
            }
        }
    }

    private func runBySubcommand() -> CommandType {
        Group {
            $0.command("version") {
                print(self.version())
            }
        }
    }

    func hasSubcommand(arguments: [String]) -> Bool {
        if let firstArg = arguments.first, firstArg.hasPrefix("-") {
            return false
        }
        return true
    }
    
    // MARK: - Git commands
    
    public func version() -> String {
        "swigit version \(applicationVersion)"
    }
    
    public func clone() {
        fatalError()
    }
    
    public func `init`() {
        fatalError()
    }
    
    public func add() {
        fatalError()
    }
    
    public func mv() {
        fatalError()
    }
    
    public func restore() {
        fatalError()
    }
    
    public func rm() {
        fatalError()
    }
    
    public func bisect() {
        fatalError()
    }
    
    public func diff() {
        fatalError()
    }
    
    public func grep() {
        fatalError()
    }
    
    public func log() {
        fatalError()
    }
    
    public func show() {
        fatalError()
    }
    
    public func status() {
        fatalError()
    }
    
    public func branch() {
        fatalError()
    }
    
    public func commit() {
        fatalError()
    }
    
    public func merge() {
        fatalError()
    }
    
    public func rebase() {
        fatalError()
    }
    
    public func reset() {
        fatalError()
    }
    
    public func `switch`() {
        fatalError()
    }
    
    public func tag() {
        fatalError()
    }
    
    public func fetch() {
        fatalError()
    }
    
    public func pull() {
        fatalError()
    }
    
    public func push() {
        fatalError()
    }
}
