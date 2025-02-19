//
//  ContentView.swift
//  Flashzilla
//
//  Created by 千々岩真吾 on 2025/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!" + String(count))
            count += 1
        }
    }
}

#Preview {
    ContentView()
}
