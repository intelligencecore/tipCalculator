import SwiftUI





struct DockView: View {
	var body: some View {
		
		TabView {
			NavigationStack {
				ContentView()
			}
			.tabItem {
				Label("Home", systemImage: "house")
			}
			
			NavigationStack {
				DivideView()
			}
			.tabItem {
				Label("Divide", systemImage: "person.3")
			}
			
			NavigationStack {
				SettingsView()
			}
			.tabItem {
				Label("Settings", systemImage: "gear")
			}
		}
		
	}
}




#Preview {
	DockView()
}
