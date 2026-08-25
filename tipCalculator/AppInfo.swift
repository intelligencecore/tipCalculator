import SwiftUI
import UIKit

struct AppInfo: View {
	var body: some View {
		
		
		NavigationStack{
			
			ScrollView{
				VStack {
					Text("Made with ❤️ in NYC using:")
						.font(.system(size: 25))
						.padding(.top, 100)
						.padding(.bottom)
						.bold()
					
					Image(systemName: "swift")
						.swipeActionsContainer()
						.font(.system(size: 250))
						.foregroundStyle(
							RadialGradient(
								colors: [.orange, .red],
								center: .center,
								startRadius: 50,
								endRadius: 150
							)
						)
				}
				.padding()
				Text("The Swift Programming Language")
					.font(.title2)
					.bold()
				
			}
			
			
			Button("Learn more about Swift") {
			 // add a link to the official swift documentation from Apple.
				if let url = URL(string: "https://apple.com/swift") {
					UIApplication.shared.open(url)
				}
			}
			.buttonStyle(.glass)
			
			
			Text("This application is independent and is not affiliated with, sponsored by, or otherwise approved by Apple Inc. Apple, iPhone, iPad and The Swift Bird Logo are trademarks of Apple Inc. registered in the U.S. and other countries.")
				.font(.footnote)
				.padding()
				.multilineTextAlignment(.center)
		}
	}
}

	
		

#Preview {
	AppInfo()
}
