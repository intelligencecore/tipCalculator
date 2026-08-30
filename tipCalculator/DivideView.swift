import SwiftUI

struct DivideView: View {
	@State private var divisor = ""
	@State private var inputBill: String = ""
	@State private var operation: Int = 0
	@State private var showResultSheet = false
	
	var body: some View {
		
		VStack {
			Text("What's the full amount of the bill that you got?")
				.bold()
				.font(.title)
				.padding(.bottom, 10)
			
			TextField("Bill amount", text: $inputBill)
				.bold()
				.font(.headline)
				.keyboardType(.decimalPad)
			
			
		}
		.padding()
		.padding(.bottom, 50)
		
		VStack(alignment: .leading) {
			Text("How many friends did you bring along to the restaurant?")
				.font(.title)
				.navigationTitle("Friends Tip Divisor")
			
		}
		
		HStack(alignment: .top) {
			
			Button {
				
				divisor = "2"
				showResultSheet = true
				
			} label: {
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
				showResultSheet = true
				
			} label: {
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
		
		HStack {
			Button {
				divisor = "4"
				showResultSheet = true
			} label: {
				Text("Three Friends")
					.tint(Color.primary)
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
					.tint(Color.clear)
			)
			.padding(.leading, 10)
			
			Button {
				divisor = "5"
				showResultSheet = true
			} label: {
				Text("Four Friends")
					.tint(Color.primary)
				
			}
			.frame(width: 110, height: 60)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.glassEffect()
			)
			.sheet(isPresented: $showResultSheet) {
				
				ResultView()
			}
			
		}
		.padding()
	
	
		
		
		
		Button {
			inputBill = ""
		} label: {
			Text("Reset")
		}
		.foregroundStyle(.red)
		.frame(width: 300, height: 60)
		.glassEffect(.clear)
		.padding(.top, 50)
		.buttonBorderShape(.roundedRectangle)
	}
	
	
	func division(input one:Int, input two:Int)-> Int{
		return 0
	}
	
	
}

#Preview {
	DivideView()
}
