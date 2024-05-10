//
//  ChatPrototype.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/05.
//

import SwiftUI

struct ChatPrototypeView: View {
    
    @State private var funFact = ""
    var body: some View {
        VStack(spacing: 25) {
            Text("Hello, world!")
                .padding()
                .background(.yellow, in: RoundedRectangle(cornerRadius: 8))
                .padding()
                .shadow(radius: 10)
            
            Text("Placeholder")
                .padding()
                .background(.teal, in: RoundedRectangle(cornerRadius: 16))
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement()!
            }
            
            Text(funFact)
                .padding()
                .background(.teal, in: RoundedRectangle(cornerRadius: 16))
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName:  hobby)
                        .resizable()
//                        .frame(maxWidth: 80, maxHeight: 60)
                        .scaledToFit()
                }
            }
            .padding()
        }
//        .frame(height: 700, alignment: .top)
//        .frame(height: 700)
//        .padding([.bottom, .trailing], 100)
        .background(.gray)
        .opacity(0.8)
    }
    
}

#Preview {
    ChatPrototypeView()
}
