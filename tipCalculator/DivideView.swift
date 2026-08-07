
import SwiftUI





struct DivideView: View {
	@State private var divisor = ""

	
	
	var body: some View {
		
		
		
		
		
		Text("How Many friends did you bring along to the restaurant?")
			.font(.title)
			.padding()
		
		
		
		TextField("Input", text: $divisor)
			.bold()
			.font(.headline)
			.padding(.top)
			.padding()
		
		
		
			.onSubmit {
				Text("The check has to be in \(divisor)")
					
				
			}
		
		
		
		
		
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
