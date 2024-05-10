
import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
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
            MoodViewFull(value: .constant(""))
        }
        .background(Gradient(colors: gradientColors))
//        .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}

