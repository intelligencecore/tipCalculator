import SwiftUI



struct ResultView: View {
	var body: some View {
		// wire up here the result sheet show to the user
		
		
		VStack{
			
			Image(systemName: "x.circle")
				.font(.largeTitle)
				.foregroundColor(Color.red)
		
			Text("The result is not available for now!... working on it")
				.font(.largeTitle)
				.bold()
				
		}
		
		
	}
	func result() -> Int {
		
		
	return 10
	}

	
}





#Preview {
	ResultView()
}
