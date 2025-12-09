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