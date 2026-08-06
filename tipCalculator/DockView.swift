import SwiftUI
import Playgrounds




struct DockView: View {
	var body: some View {
		
		
		
			// dock view tabview
			// stack to jump between screens
		TabView{
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
					.navigationTitle("Title")
			}
		}
	}
	
	
	
		
	
}


#Preview {
	DockView()
}
