import SwiftUI



struct SettingsView: View {
	@State private var showInfo = false
	
	
	var body: some View {
		
		VStack{
			
	//Add a title here saying "Settings" with navigationLink
			List{
				Button("Reset to default"){
					// set the save data to zero
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				
				Button("Use Euro intead of US Dollars"){
					//example buttons
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				
			}
			
			Spacer()
			
			
			HStack {
				Spacer()
				Button {
					showInfo = true
				} label: {
					HStack {
						Text("Learn more about this App")
						Image(systemName: "info.circle")
					}
				}
				.padding(.bottom)
				
				
				
			}
			.padding(.horizontal)
			.sheet(isPresented: $showInfo) {
				AppInfo()
			}
		}
		.padding(.top, 100)
		.navigationTitle("Settings")
		.navigationBarTitleDisplayMode(.automatic)
	}
	
}

#Preview {
	SettingsView()
}




	//@State is a property wrapper that holds the data that the view is representing, its reactive (when the value changes the view will be redrawn automatically). Something more like a switch and a bulb, if the switch is toggled on it will automatically turn on the light and vice versa

 //@State holds a piece of data the view owns, and when that data changes it triggers a redraw.
