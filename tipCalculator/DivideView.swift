
import SwiftUI





struct DivideView: View {
	@State private var divisor = ""
	@State private var inputBill:String = ""
	@State private var operation: Int = 0
	
	var body: some View {
		
		
		
		
		
		Text("How many friends did you bring along to the restaurant?")
			.font(.title)
			.padding()
			.navigationTitle("Friends Tip Divisor")
		
		HStack{
			TextField("Input", text: $divisor)
				.bold()
				.font(.headline)
			
		}
		.padding()
		
		
		VStack{
			Text("What the full amount of the bill that you got?")
			TextField("Bill amount", text: $inputBill)
				.bold()
				.font(.headline)
				.keyboardType(.decimalPad)
		}
		.padding()
		.padding(.bottom, 100)

		
		
		
		
		
		
		
		Button {
			
		}label: {
			Text("Reset")
		}
		.glassEffect(.clear)
		.foregroundStyle(.red)
		.padding(.top, 50)
		.buttonBorderShape(.roundedRectangle)
		
	}
	
}


#Preview {
	DivideView()
}
