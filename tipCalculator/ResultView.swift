import SwiftUI



struct ResultView: View {
	var body: some View {
		// wire up here the result sheet show to the user
		
		
		VStack{
			Text("The result is not savailable for now!... working on it")
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
