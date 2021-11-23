//
//  main.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 18/11/21.
//

import UIKit


let isRunningTest = NSClassFromString("XCTestCase") != nil
let appDelegateClass = isRunningTest ? nil : NSStringFromClass(AppDelegate.self)

let args = UnsafeMutablePointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc))
UIApplicationMain(CommandLine.argc, args, nil, appDelegateClass)
