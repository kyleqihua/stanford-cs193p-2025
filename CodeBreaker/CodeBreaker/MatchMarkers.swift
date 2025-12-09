//
//  MatchMarkers.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}

struct MatchMarkers: View {
    var matches: [Match]

    var body: some View {
        HStack {
            VStack {
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack {
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }

    func matchMarker(peg: Int) -> some View {
        let exactCount = matches.count { $0 == .exact }
        let foundCount = matches.count { $0 != .nomatch }
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(foundCount > peg ? Color.primary : Color.clear, lineWidth: 2)
            .aspectRatio(1, contentMode: .fit)
    }
}

struct MatchMarkersPreview: View {
    var matches: [Match]

    var body: some View {
        HStack {
            ForEach(0..<4, id: \.self) { _ in
                Circle().fill(.primary)
            }
            MatchMarkers(matches: matches)
        }
    }
}

#Preview {
    MatchMarkersPreview(matches: [.exact, .inexact, .nomatch, .exact])
        .frame(height: 50)
}
