//
//  Git.swift
//  swigit
//
//  Created by Eimer on 2020/12/17.
//

import Foundation

///
/// usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
///            [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
///            [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
///            [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
///            <command> [<args>]
///
public protocol GitClient: GitCommands {

    var version: String { get }
}

/// These are common Git commands used in various situations:
public protocol GitCommands {
    
    /// ## start a working area (see also: git help tutorial)
    /// Clone a repository into a new directory
    func clone()
    /// Create an empty Git repository or reinitialize an existing one
    func `init`()
    
    /// ## work on the current change (see also: git help everyday)
    /// Add file contents to the index
    func add()
    /// Move or rename a file, a directory, or a symlink
    func mv()
    /// Restore working tree files
    func restore()
    /// Remove files from the working tree and from the index
    func rm()
    
    /// ## examine the history and state (see also: git help revisions)
    /// Use binary search to find the commit that introduced a bug
    func bisect()
    /// Show changes between commits, commit and working tree, etc
    func diff()
    /// Print lines matching a pattern
    func grep()
    /// Show commit logs
    func log()
    /// Show various types of objects
    func show()
    /// Show the working tree status
    func status()
    
    /// ## grow, mark and tweak your common history
    /// List, create, or delete branches
    func branch()
    /// Record changes to the repository
    func commit()
    /// Join two or more development histories together
    func merge()
    /// Reapply commits on top of another base tip
    func rebase()
    /// Reset current HEAD to the specified state
    func reset()
    /// Switch branches
    func `switch`()
    /// Create, list, delete or verify a tag object signed with GPG
    func tag()

    /// ## collaborate (see also: git help workflows)
    /// Download objects and refs from another repository
    func fetch()
    /// Fetch from and integrate with another repository or a local branch
    func pull()
    /// Update remote refs along with associated objects
    func push()
}
