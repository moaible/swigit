//
//  Swigit.swift
//  swigit
//
//  Created by Eimer on 2020/12/17.
//

import Foundation

struct Swigit: GitClient, GitCommands {

    var version: String {
        return "swigit version 0.0.1"
    }

    // MARK: - Initialize

    init() {
        
    }
    
    // MARK: - Git commands
    
    func clone() {
        fatalError()
    }
    
    func `init`() {
        fatalError()
    }
    
    func add() {
        fatalError()
    }
    
    func mv() {
        fatalError()
    }
    
    func restore() {
        fatalError()
    }
    
    func rm() {
        fatalError()
    }
    
    func bisect() {
        fatalError()
    }
    
    func diff() {
        fatalError()
    }
    
    func grep() {
        fatalError()
    }
    
    func log() {
        fatalError()
    }
    
    func show() {
        fatalError()
    }
    
    func status() {
        fatalError()
    }
    
    func branch() {
        fatalError()
    }
    
    func commit() {
        fatalError()
    }
    
    func merge() {
        fatalError()
    }
    
    func rebase() {
        fatalError()
    }
    
    func reset() {
        fatalError()
    }
    
    func `switch`() {
        fatalError()
    }
    
    func tag() {
        fatalError()
    }
    
    func fetch() {
        fatalError()
    }
    
    func pull() {
        fatalError()
    }
    
    func push() {
        fatalError()
    }
}
