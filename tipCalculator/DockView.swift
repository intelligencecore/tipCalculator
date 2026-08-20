import SwiftUI

struct DockView: View {
	@State private var division = 0.0
	
	var body: some View {
		
		TabView {
			NavigationStack {
				ContentView()
			}
			.tabItem {
				Label("Calculator", systemImage: "percent")
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
