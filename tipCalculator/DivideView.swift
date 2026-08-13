
import SwiftUI





struct DivideView: View {
	@State private var divisor = ""
	@State private var inputBill:String = ""
	@State private var operation: Int = 0
	
	var body: some View {
		
		
		VStack{
			Text("How many friends did you bring along to the restaurant?")
				.font(.title)
				.navigationTitle("Friends Tip Divisor")
			
			
		}
		.padding()
		
		
		
		HStack{
			
			Button {
				
			}label: {
				Text("One Friend")
				// number + 1, 2, 3 or 4
			}
		}
		.background(
			RoundedRectangle(cornerRadius: 11)
				.fill(Color.secondary.opacity(0.3))
		)
		
		

		
		
		
		
		
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
