import SwiftUI
enum Tab {
    case first
    case second
}
struct MainView: View {
    let k = K()
    @StateObject private var keyboardhandler = KeyboardHandler()
    @State private var selectedTab: Tab = .first
    var body: some View {
        ZStack {
            VStack{
                switch selectedTab {
                case .first:
                        CalculatorView()
                case .second:
                        SettingsView()
                }
                CustomTabView(selectedTab: $selectedTab)
                Spacer()
            }
        }.background(Color(k.backgroundColor))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

