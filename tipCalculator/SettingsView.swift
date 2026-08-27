import SwiftUI



struct SettingsView: View {
	
//	enum countryCurrency{
//		case USD(String)
//		case canadianDollar(String)
//		case euro(String)
//	}
	

	@State private var showInfo = false
	@State private var enableHapticFeedback: Bool = false
	
	var body: some View {
		
		VStack{
			List{
				Button("Reset to default"){
						// set the save data to zero
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				
				Button("Use another currency instead US Dollars"){
						//example buttons
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				
			}
			
			
			
			
			List{
				
				Toggle("Haptic Feedback?", isOn: $enableHapticFeedback)
				
			}
			.scrollDisabled(true)
			.scrollContentBackground(.hidden)
			.listRowBackground(Color.clear)
//			.padding()
//			.padding(.top, 215)
			
			
			
			
			
			
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
		.padding(.top, 200)
		.navigationTitle("Settings")
		.navigationBarTitleDisplayMode(.automatic)
		.padding(.bottom, 0)
		
		
		//versioning in small letters
		HStack{
			Button {
				// open the url of the github project
			}
			label: {
				Text("Version: 0.5")
					.bold()
					.font(.footnote)
					.foregroundStyle(Color.secondary)
			}
		}
		.padding()
		
	}
}

#Preview {
	SettingsView()
}
