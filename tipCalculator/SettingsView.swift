import SwiftUI



struct SettingsView: View {
	@State private var showInfo = false
	
	var body: some View {
		
		
		
		
		
		HStack {
			Spacer()
			Button {
				showInfo = true
			} label: {
				Image(systemName: "info.circle")
			}
			
			
		}
		.padding(.horizontal)
		.sheet(isPresented: $showInfo) {
			appInfo()
				.glassEffect()
		}
	}
}


#Preview {
	ContentView()
}




	//@State is a property wrapper that holds the data that the view is representing, its reactive (when the value changes the view will be redrawn automatically). Something more like a switch and a bulb, if the switch is toggled on it will automatically turn on the light and vice versa

 //@State holds a piece of data the view owns, and when that data changes it triggers a redraw.
