//
//  main.swift
//  uppercase
//
//  Created by Facundo Menzella on 15/06/2020.
//  Copyright © 2020 facumenzella. All rights reserved.
//

import Foundation
import ArgumentParser

struct Uppercaser: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "uppercase",
        abstract: "A utility to convert text to uppercase",
        discussion: "",
        version: "1.0.0"
    )
    
    @Argument(parsing: .remaining,
              help: "Text to uppercase.")
    var content: [String]
    
    func run() throws {
        let toUppercaseText = content.joined(separator: " ")
        print(toUppercaseText.uppercased())
    }
}

Uppercaser.main()
