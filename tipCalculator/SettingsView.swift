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
