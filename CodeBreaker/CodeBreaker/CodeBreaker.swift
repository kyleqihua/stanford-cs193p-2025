//
//  CodeBreaker.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 12/10/25.
//

import Foundation

struct CodeBreaker {
    var masterCode: Code
    var guess: Code
    var attempts: [Code]
    let pegChoices: [Peg]
}

struct Code {
    var pegs: [Peg]
    var kind: Kind

    enum Kind {
        case master
        case guess
        case attempt
    }
}

typealias Peg = Color