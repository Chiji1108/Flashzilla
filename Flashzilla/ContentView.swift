//
//  ContentView.swift
//  Flashzilla
//
//  Created by 千々岩真吾 on 2025/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var cards = [Card](repeating: .example, count: 10)

    func removeCard(at index: Int) {
        cards.remove(at: index)
    }

    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index]) {
                            withAnimation {
                                removeCard(at: index)
                            }
                        }
                        .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
}

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}

#Preview {
    ContentView()
}
