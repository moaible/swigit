#!/usr/bin/swift

let arguments = Array(CommandLine.arguments.dropFirst())
let swigit = Swigit()
swigit.run(arguments)
