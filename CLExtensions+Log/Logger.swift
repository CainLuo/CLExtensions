//
//  Logger.swift
//  LockTools
//
//  Created by Cain Luo on 2019/11/7.
//  Copyright © 2019 Cain Luo. All rights reserved.
//

import Foundation
import XCGLogger

public let log: XCGLogger = {
    let log = XCGLogger.default
    
    log.setup(level: .debug, showLogIdentifier: true, showFunctionName: true, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true, showDate: true, writeToFile: nil, fileLevel: .debug)
    
    let emojiLogFormatter = PrePostFixLogFormatter()
    
    emojiLogFormatter.apply(prefix: "🗯🗯🗯", postfix: "🗯🗯🗯", to: .verbose)
    emojiLogFormatter.apply(prefix: "🔹🔹🔹", postfix: "🔹🔹🔹", to: .debug)
    emojiLogFormatter.apply(prefix: "ℹ️ℹ️ℹ️", postfix: "ℹ️ℹ️ℹ️", to: .info)
    emojiLogFormatter.apply(prefix: "⚠️⚠️⚠️", postfix: "⚠️⚠️⚠️", to: .warning)
    emojiLogFormatter.apply(prefix: "❌❌❌", postfix: "❌❌❌", to: .error)
    emojiLogFormatter.apply(prefix: "💣💣💣", postfix: "💣💣💣", to: .severe)
    
    log.formatters = [emojiLogFormatter]
    
    return log
}()
