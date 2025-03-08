//
//  Card.swift
//  Flashzilla
//
//  Created by 千々岩真吾 on 2025/03/06.
//

import Foundation

struct Card: Codable {
    var prompt: String
    var answer: String

    static let example = Card(prompt: "What is the capital of France?", answer: "Paris")
}
