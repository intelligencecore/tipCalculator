import SwiftUI
import UIKit

struct appInfo: View {
	var body: some View {
		
		
		NavigationStack{
			
			ScrollView{
				VStack {
					Text("Made with ❤️ in NYC using:")
						.padding(.top, 100)
						.padding(.bottom, 100)
						.bold()
					
					Image(systemName: "swift")
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
			
			
			Button("Know more about Swift") {
			 // add a link to the official swift documentation from Apple.
				if let url = URL(string: "https://apple.com/swift") {
					UIApplication.shared.open(url)
				}
			}
			.buttonStyle(.glass)
			
			
			Text("This application is independent and is not affiliated with, sponsored by, or otherwise approved by Apple Inc. Apple, iPhone,iPad and The Swift Bird Logo are trademarks of Apple Inc. registered in the U.S. and other countries.")
				.font(.footnote)
				.padding()
				.formStyle(.automatic)
				.multilineTextAlignment(.center)
		}
	}
}

	
		

#Preview {
	appInfo()
}
