import SwiftUI


	// make gitignore file to remove .dstore files


struct ContentView: View {
		//state to track the setting variable status
	@State private var openSettings = false
	@State private var inputNumber:Float = 0.00
	@State private var workingResult:Float = 0.00
	@FocusState private var inputDone: Bool
	
		// do c = a + b
	
	var body: some View {
		
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.title)
		.padding(.top, 60)
		//TODO: Change the color scheme and make it more glossy and Liquid Glass like.
		
		
		
			// show the number and have a backround rounded rectangle behind the number
		TextField("Quantity", value: $inputNumber, format: .number)
			.keyboardType(.decimalPad)
			.focused($inputDone)
			.multilineTextAlignment(.trailing)
			.font(.system(size: 70, weight: .bold))
			.foregroundStyle(.red)
			.frame(width: 390, height: 65)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.fill(Color.secondary.opacity(0.3))
			)
			.toolbar {
				ToolbarItemGroup(placement: .keyboard){
					Spacer()
					Button("Done") {
						inputDone = false
					}
				}
			}
			.padding(.bottom, 20)

		
		
		//TODO: Fix keyboard lock in after the input of integers (Add done button on the keyboard to hide after the use)✅ (Done with the toolbaritem and the focuskeyboardstate)
		
		
		
		
		
			// Stack 1 - 10%
		HStack {
			Button {
				print("This should print input + 10%")
				workingResult = inputNumber * 1.10
				
			} label: {
				Text("+ 10%")
					.font(.headline)
					.fontWeight(.bold)
					.foregroundStyle(.white)
					.frame(width: 100, height: 100)        // size the label, not the shape
					.background(
						RoundedRectangle(cornerRadius: 16)
							.fill(Color.green)
					)
			}
			.buttonStyle(.plain)
			
			
			
			
				//Button #2 - 20%
			Button {
				print("This should print: input + 20%")
				workingResult = inputNumber * 1.20
			} label: {
				Text("+ 20%")
					.font(.headline)
					.fontWeight(.bold)
					.foregroundStyle(.white)
					.frame(width: 100, height: 100)        // size the label, not the shape
					.background(
						RoundedRectangle(cornerRadius: 16)
							.fill(Color.green)
					)
			}
			.buttonStyle(.borderless)
			
			
			
				//Button # 3 - 30%
			Button {
				print("This should print: input + 30%")
				workingResult = inputNumber * 1.30
			} label: {
				Text("+ 30%")
					.font(.headline)
					.fontWeight(.bold)
					.foregroundStyle(.white)
					.frame(
						width: 100,
						height: 100)   // size the label, not the shape
					.background(
						RoundedRectangle(cornerRadius: 16)
							.fill(Color.green)
					)
			}
			.buttonStyle(.plain)
			
		}
		
		
		
		
		
			//text saying that the amount of money will be based on the percentage selected
		HStack {
			Text("The total amount with the tip selected will be this:")
				.font(.system(size:17))
				.bold()
		}
		.padding(.top, 50)
		
		
			//Show the result number calculated after the percentage is applied
		VStack(alignment:.trailing){
		Text(String(workingResult))
			.font(.system(size: 80))
			.bold()
			.foregroundColor(.red)
			.frame(width: 390, height: 65)   // tall enough for size-80 text
			.background(
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.secondary)
			)
		
	}
		
		VStack {
				//Button to reset the value to zero.
			Button {
				inputNumber = 0.00
				workingResult = 0.00
			} label: {
				Text("Reset")
					.padding()
					.bold()
					.foregroundColor(Color.red)
			}
			.glassEffect(.regular.tint(.purple.opacity(0.3)).interactive())
		}
		.padding(.top, 90)
	}
}




#Preview {
	ContentView()
}
