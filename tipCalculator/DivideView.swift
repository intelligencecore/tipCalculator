
import SwiftUI





struct DivideView: View {
	@State private var divisor = ""

	
	
	var body: some View {
		
		
		
		
		
		Text("How many friends did you bring along to the restaurant?")
			.font(.title)
			.padding()
		
		
		
		TextField("Input", text: $divisor)
			.bold()
			.font(.headline)
			.padding(.top)
			.padding()
			
		
		
		
		
		
		
		
		
		Button {
			
		}label: {
			Text("Reset")
		}
		.foregroundStyle(.red)
		.padding(.top, 50)
		.buttonBorderShape(.roundedRectangle)
		
	}
}


#Preview {
	DivideView()
}
