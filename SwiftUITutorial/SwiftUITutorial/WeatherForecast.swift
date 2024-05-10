//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Abe on R 6/05/02.
//

import SwiftUI

struct WeatherForecast: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea() //画面いっぱい
            
            ScrollView(.horizontal) {
                HStack {
                    DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                    DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                    DayForecast(day: "Wed", isRainy: true, high: 60, low: 40)
                    DayForecast(day: "Thu", isRainy: false, high: 70, low: 50)
                    DayForecast(day: "Fri", isRainy: false, high: 60, low: 40)
                    DayForecast(day: "Sat", isRainy: false, high: 60, low: 40)
                    DayForecast(day: "Sun", isRainy: true, high: 60, low: 40)
                }
            }
//            .background(Gradient(colors: [.blue,.mint]))
            .padding(.vertical)
            .background(.tint, in: RoundedRectangle(cornerRadius: 12))
            .padding()
//            .background(.thickMaterial)
        }
//        .background(.indigo)
    }
}

#Preview {
    WeatherForecast()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            //        return "cloud.rain.fill"
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return .blue
        } else {
            return .yellow
        }
    }
    
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
