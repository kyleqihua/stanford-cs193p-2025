//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var pegs: some View {
        HStack {
            Circle()
                .foregroundStyle(.red)
            Circle()
                .foregroundStyle(.green)
            Circle()                
                .foregroundStyle(.green)
            Circle()
                .foregroundStyle(.yellow)
        }        
    }

    var body: some View {
        VStack {
            pegs
            pegs
            pegs
            pegs
        }
        .padding()   
    }
}

#Preview {
    ContentView()
}
