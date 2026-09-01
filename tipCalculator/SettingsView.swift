import SwiftUI
import UIKit


struct SettingsView: View {
	
	
		// string connected to the calc output saying the currency (USD or
	
	enum countryCurrency{
		
		case cdefault(String)
		case USD(String)
		case AUD(String)
		case MEX(String)
		case GBP(String)
		case EUR(String)
	}
	
	
	
	@State private var showInfo = false
	@State private var enableHapticFeedback: Bool = false
	@State private var isVersionTapped: Bool = false
	@State private var currencySelected: countryCurrency = .cdefault("USD")
	@State private var showResetAlert:Bool = false
	
	var body: some View {
		
		VStack{
			
			List{
				Button("Reset to default"){
					showResetAlert = true
				}
				.alert("Reset all values?", isPresented: $showResetAlert) {
					Button("Cancel", role: .cancel) { }
					Button("Reset", role: .destructive) {
						currencySelected = .cdefault("USD")
						
					}
				}
			}
			
			
			Text("Use another currency?")
				.bold()
				.padding()
			
			HStack {
				
				Button{
					currencySelected = .USD("USD")
				}label: {
					Text("USD")
						.foregroundColor(Color.primary)
				}
				.background(RoundedRectangle(cornerRadius: 10)
					.frame(width: 60, height: 40))
				.scaledToFit()
				.foregroundColor(Color.green)
				.padding()
				
				Button{
					currencySelected = .MEX("MEX")
				}label: {
					Text("MEX")
						.foregroundColor(Color.primary)
					
				}
				.background(RoundedRectangle(cornerRadius: 10)
					.frame(width: 60, height: 40))
				.scaledToFit()
				.foregroundColor(Color.green)
				.padding()
				
				Button{
					currencySelected = .AUD("AUD")
				}label: {
					Text("AUD")
						.foregroundColor(Color.primary)
					
				}
				.background(RoundedRectangle(cornerRadius: 10)
					.frame(width: 60, height: 40))
				.scaledToFit()
				.foregroundColor(Color.green)
				.padding()
				
				Button{
					currencySelected = .GBP("GBP")
				}label: {
					Text("GBP")
						.foregroundColor(Color.primary)
					
				}
				.background(RoundedRectangle(cornerRadius: 10)
					.frame(width: 60, height: 40))
				.scaledToFit()
				.foregroundColor(Color.green)
				.padding()
				
				Button{
					currencySelected = .EUR("EUR")
				}label: {
					Text("EUR")
						.foregroundColor(Color.primary)
					
				}
				.background(RoundedRectangle(cornerRadius: 10)
					.frame(width: 60, height: 40))
				.scaledToFit()
				.foregroundColor(Color.green)
				.padding()
			}
			
			
			
			Toggle("Haptic Feedback?", isOn: $enableHapticFeedback)
				// add the haptic call to this toggle
				.scrollDisabled(true)
				.scrollContentBackground(.hidden)
				.listRowBackground(Color.clear)
				.padding(.top, 160)
				.padding()
			
			
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
					Text("Version: 0.8.1")
						.bold()
						.font(.footnote)
						.foregroundStyle(Color.secondary)
				}
			}
			.padding()
			
		}
	}
}

#Preview {
	SettingsView()
}
