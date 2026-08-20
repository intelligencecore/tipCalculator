
import SwiftUI





struct DivideView: View {
	@State private var divisor = ""
	@State private var inputBill:String = ""
	@State private var operation: Int = 0
	
	var body: some View {
		
		
		
		
		
		
		VStack{
			Text("What the full amount of the bill that you got?")
				.font(.title)
				.padding()
				.padding(.bottom, 20)
		
			TextField("Bill amount", text: $inputBill)
				.bold()
				.font(.headline)
				.keyboardType(.decimalPad)
		}
		.padding()
		.padding(.bottom, 110)
		
		
		
		
		
		VStack{
			Text("How many friends did you bring along to the restaurant?")
				.font(.subheadline)
				.navigationTitle("Friends Tip Divisor")
			
			
		}
		.padding()
		
		
		
		HStack(alignment: .top){
			
			Button {
				
				divisor = "2"
				
				
			}label: {
				Text("One Friend")
					.tint(Color.primary)
				
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.tint(Color.clear)
			)
			.padding()
			
			
			Button {
				divisor = "3"
				
			}label: {
				Text("Two Friends")
					.tint(Color.primary)
				
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.tint(Color.clear)
			)
			.padding()
		}
		.padding()
		
		HStack{
			Button {
				divisor = "4"
			}label: {
				Text("Three Friends")
					.tint(Color.primary)
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.tint(Color.clear)
			)
			.padding()
			
			
			
			Button {
				divisor = "5"
			}label: {
				Text("Four Friends")
					.tint(Color.primary)
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.tint(Color.clear)
			)
			
			
		}
		.padding()
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
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
