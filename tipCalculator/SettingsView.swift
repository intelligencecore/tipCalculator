import SwiftUI
import UIKit


struct SettingsView: View {
	
	
		// string connected to the calc output saying the currency (USD or EUR or CAD)
		//	enum countryCurrency{
		//		case USD(String)
		//		case canadianDollar(String)
		//		case euro(String)
		//	}
	
	
	@State private var showInfo = false
	@State private var enableHapticFeedback: Bool = false
	@State private var isVersionTapped: Bool = false
	
	
	
	var body: some View {
		
		VStack{
			List{
				Button("Reset to default"){
						// set the save data to zero
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				
				Button{
					
					
				} label: {
					
					
					VStack(alignment: .leading){
						Image(systemName: "swift")
						
						Text("Use another currency instead US Dollars")
					}
				}
				
				
				
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
		.navigationTitle("Settings")
		.navigationBarTitleDisplayMode(.automatic)
		.padding(.bottom, 0)
		
		
			//versioning in small letters
			// versioning comes from how many times i have done edits to the files
		HStack{
			Button {
					// open the url of the github project
				if let url = URL(string: "https://github.com/intelligencecore/tipCalculator") {
					UIApplication.shared.open(url)
				}
			}
			label: {
				Text("Version: 0.6")
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
