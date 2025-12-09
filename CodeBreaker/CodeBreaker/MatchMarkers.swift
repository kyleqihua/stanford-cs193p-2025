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
            ForEach(0..<(matches.count + 1) / 2, id: \.self) { col in
                VStack {
                    matchMarker(peg: col * 2)
                    if col * 2 + 1 < matches.count {
                        matchMarker(peg: col * 2 + 1)
                    }
                }
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
            ForEach(0..<matches.count, id: \.self) { _ in
                Circle().fill(.primary)
            }
            MatchMarkers(matches: matches)
        }
    }
}

#Preview {
    VStack(alignment: .leading) {
        MatchMarkersPreview(matches: [.exact, .inexact, .nomatch])
            .frame(height: 50)
        MatchMarkersPreview(matches: [.exact, .inexact, .nomatch, .exact])
            .frame(height: 50)
        MatchMarkersPreview(matches: [.exact, .inexact, .exact, .nomatch, .exact])
            .frame(height: 50)
        MatchMarkersPreview(matches: [.exact, .inexact, .exact, .inexact, .nomatch, .exact])
            .frame(height: 50)
    }
    .padding()
}
