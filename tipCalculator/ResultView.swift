import SwiftUI



struct ResultView: View {
	var body: some View {
		// wire up here the result sheet show to the user
		
		
		VStack{
			
			HStack{
			Image(systemName: "x.circle")
				.resizable()
				.scaledToFit()
				.frame(width: 300, height: 300)
				.font(.largeTitle)
				.foregroundColor(Color.red)
				
		}
			Text("Dang it!  The result is not available for now!... working on it!")
				.font(.title)
				.bold()
				
		}
		.padding()
		
		
	}
}





#Preview {
	ResultView()
}
