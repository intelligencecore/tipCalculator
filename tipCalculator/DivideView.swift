
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
		
		
		
		HStack(alignment: .top){
			
			Button {
				
			}label: {
				Text("One Friend")
					.tint(Color.primary)
					// number + 1, 2, 3 or 4
			}
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.frame(width: 100, height: 60)
			)
			.padding()
			
			Button {}label: {
				Text("Two Friends")
					.tint(Color.primary)
				
					// change the binfing variable to the amount og people and then divide the bill + tip on it
			}
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.frame(width: 100, height: 60)
					
			)
			.padding()
		}
		.padding()
			
			HStack{
			Button {
				
			}label: {
				Text("Three Friends")
					.tint(Color.primary)
					// number + 1, 2, 3 or 4
			}
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.frame(width: 100, height: 60)
			)
			.padding()
			
			
			
			Button {
				
			}label: {
				Text("Four Friends")
					.tint(Color.primary)
				
			}
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.frame(width: 100, height: 60)
					.foregroundStyle(Color.blue)
			)
			.padding()
			
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
			inputBill = ""
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
