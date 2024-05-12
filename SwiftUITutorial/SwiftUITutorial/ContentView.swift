
import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                LandmarkList()
                    .tabItem {
                        Label("LandmarkList", systemImage: "mappin.and.ellipse")
                    }
                    .foregroundStyle(.black)
                PickAPalView()
                    .tabItem {
                        Label("PickAPal", systemImage: "person.3.sequence.fill")
                    }
                    .foregroundStyle(.black)
                DiceRollerView()
                    .tabItem {
                        Label("DiceRollerView", systemImage: "die.face.1")
                    }
                WelcomePage()
                    .tabItem {
                        Label("WelcomePage", systemImage: "person")
                    }
                FeaturesPage()
                    .tabItem {
                        Label("FeaturesPage", systemImage: "book")
                    }
                WeatherForecast()
                    .tabItem {
                        Label("WeatherForecast", systemImage: "sun.max")
                    }
                ChatPrototypeView()
                    .tabItem {
                        Label("ChatPrototypeView", systemImage: "hand.thumbsup")
                    }
                DebuggingView()
                    .tabItem {
                        Label("Card", systemImage: "lanyardcard.fill")
                    }
                MoodViewFull(value: .constant(""))
                    .tabItem {
                        Label("MoodViewFull", systemImage: "person.crop.circle.dashed.circle.fill")
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Gradient(colors: gradientColors))
            .foregroundStyle(.white)
        }
//        .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//        .tabViewStyle(.page)
//        .foregroundStyle(.white)
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}

