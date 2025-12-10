//
//  CodeBreaker.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 12/10/25.
//

import SwiftUI

struct CodeBreaker {
    var masterCode: Code = Code(pegs: [], kind: .master)
    var guess: Code = Code(pegs: [], kind: .guess)
    var attempts: [Code] = []
    let pegChoices: [Peg] = [.red, .orange, .yellow, .green, .blue, .purple]
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