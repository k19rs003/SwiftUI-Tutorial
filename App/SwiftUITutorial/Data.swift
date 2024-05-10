//
//  Data.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/07.
//

import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    image: "Placeholder",
    name: "Moe Abe",
    story: "hello, hello, hello, hello!!!!!",
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🍣", "🥐"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts: [
        "aaaaaaaaaaaaaa",
        "bbbbbbbbbbbbbb",
        "cccccccccccccc",
        "dddddddddddddd",
    ])
