//
//  ModelData.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/10.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

// Tはジェネリック型パラメータであり、Decodableプロトコルに準拠する任意の型を受け入れることができます
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
