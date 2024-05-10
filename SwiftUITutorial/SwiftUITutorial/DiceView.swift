//
//  DiceView.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/07.
//

import SwiftUI

struct DiceView: View {
//    @State private var numberOfPips: Int = 1
    var numberOfPips: Int
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            
//            Button("Roll") {
////                withAnimation {
////                    numberOfPips = Int.random(in: 1...6)
////                }
//            }
//            .buttonStyle(.bordered)
        }
    }
}

struct DiceRollerView: View {
    @State private var numberOfDice: Int = 1
    @State private var numberOfCells: String = ""
    @State private var number: Int = 6
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                //  Capsは「大文字の形」小文字を、小さな「大文字の形」へ
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
                .padding()
            
            HStack {
                if numberOfDice != 1{
                    ForEach(1...numberOfDice-1, id: \.description) { _ in
                        DiceView(numberOfPips: 6)
                    }
                }
                DiceView(numberOfPips: number)
//                DiceView(numberOfPips: number)
            }
            
            Text("Number of Dice：\(numberOfDice)")
                .font(.title3.lowercaseSmallCaps())
            
            Button("Roll") {
                guard let cellNumber = Int(numberOfCells) else {
                    return
                }
                if cellNumber == 0 {
                    return
                }
                
                if ((cellNumber % 6) != 0) {
                    numberOfDice = cellNumber / 6 + 1
                    number = cellNumber % 6
                } else {
                    number = 6
                    numberOfDice = cellNumber / 6
                }
            }
            .buttonStyle(.bordered)
            .fontWeight(.bold)
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            
            Text("Number of Cell：\(numberOfCells)")
                .foregroundStyle(.white)
                .font(.title3.lowercaseSmallCaps())
                .padding()
            HStack {
                ForEach(0...9, id: \.description) { number in
                    Button("\(number)") {
                        numberOfCells = "\(numberOfCells)\(number)"
                    }

                }
                Button("Clear", systemImage: "x.circle") {
                    numberOfCells = ""
                }
                .labelStyle(.iconOnly)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.appBeckground)
        .background(Gradient(colors: [.appBeckground, .appBeckground.opacity(0.8)]))
        .tint(.white)
    }
}

#Preview {
    DiceRollerView()
}
