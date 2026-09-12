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
				.font(.largeTitle)
				.fontWeight(.regular)
				.padding(.bottom, 10)
			
			TextField("Bill amount", text: $inputBill)
				.background(RoundedRectangle(cornerRadius: 10)
					.foregroundColor(Color.green.opacity(0.1))
					.frame(height: 50)
				)
				.bold()
				.font(.headline)
				.keyboardType(.decimalPad)
				.padding(.bottom, 10)
			
			Text("How many friends did you bring along to the restaurant?")
				.font(.largeTitle)
				.navigationTitle("Friends Tip Divisor")
			
			
			
		}
		.padding()
		.padding(.bottom, 25)
		
		
		
		HStack(spacing: 5){
		//TODO: Fix the buttions to be side by sude on the screen and maybe making them bigger (Screen edge)
			
			Button {
				
				divisor = "2"
				showResultSheet = true
				
			} label: {
				Text("One Friend")
					.foregroundColor(Color.black)

				Image(systemName: "person")
					.font(.title)
			}
			.scaledToFit()
			.frame(width: 180, height: 180)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.foregroundColor(Color.yellow)
			)

			
			Button {
				divisor = "3"
				showResultSheet = true
				
			} label: {
				Text("Two Friends")
					.tint(Color.primary)
				Image(systemName: "person.2")
					.font(.headline)
			}
			.scaledToFit()
			.frame(width: 180, height: 180)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.foregroundColor(Color.red)
			)
		}
		
		
		HStack {
			Button {
				divisor = "4"
				showResultSheet = true
			} label: {
				Text("Three Friends")
					.tint(Color.primary)
				Image(systemName: "person.3")
					.font(.headline)
					.foregroundColor(Color.primary)
				
			}
			.scaledToFit()
			.frame(width: 180, height: 180)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.foregroundColor(Color.blue)
			)
			
			Button {
				divisor = "5"
				showResultSheet = true
			} label: {
				Text("Four Friends")
					.tint(Color.primary)
				Image(systemName: "person")
					.font(.headline)
				
			}
			.scaledToFit()
			.frame(width: 180, height: 180)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.foregroundColor(Color.orange)
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
		.buttonBorderShape(.roundedRectangle)
	}
	
	
	
}

#Preview {
	DivideView()
}
