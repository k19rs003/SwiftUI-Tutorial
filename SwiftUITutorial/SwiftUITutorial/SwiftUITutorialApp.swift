//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/02.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
