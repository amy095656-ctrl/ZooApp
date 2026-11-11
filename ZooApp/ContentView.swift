import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("探索", systemImage: "lightbulb.2.fill") {
                HomeView()
            }
            Tab("園區場館", systemImage: "house.fill") {
                ZooAreaList()
            }
            Tab("地圖", systemImage: "map.fill") {
                Map()
            }
        }
        .tint(Color("AccentColor"))
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
