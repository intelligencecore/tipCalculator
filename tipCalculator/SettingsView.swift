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
				
			
					
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			
		}
		
		
		Text("Use another currency?")
			.bold()
			.padding()
		
		HStack {
			
			Button{}label: {
				Text("USD")
					.foregroundColor(Color.white)
			}
			.background(RoundedRectangle(cornerRadius: 10)
			.frame(width: 60, height: 40))
			.scaledToFit()
			.foregroundColor(Color.green)
			.padding()
			
			Button{}label: {
				Text("MEX")
			}
			.background(RoundedRectangle(cornerRadius: 10)
			.frame(width: 60, height: 40))
			.scaledToFit()
			.padding()
			
			Button{}label: {
				Text("AUD")
			}
			.background(RoundedRectangle(cornerRadius: 10)
			.frame(width: 60, height: 40))
			.scaledToFit()
			.padding()
			
			Button{}label: {
				Text("GBP")
			}
			.background(RoundedRectangle(cornerRadius: 10)
			.frame(width: 60, height: 40))
			.scaledToFit()
			.padding()
			
		}
		
		
		List{
			
			Toggle("Haptic Feedback?", isOn: $enableHapticFeedback)
				// add the haptic call to this toggle
		
			
		}
		.scrollDisabled(true)
		.scrollContentBackground(.hidden)
		.listRowBackground(Color.clear)
		.padding(.top, 200)
		
		
		
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
				Text("Version: 0.8")
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
