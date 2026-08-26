import SwiftUI


	// make gitignore file to remove .dstore files


struct ContentView: View {
	
	//custom type for the selection
	enum TipSelection {
		case none
		case percent(Double)
	}
	
	
	
		//state to track the setting variable status
	@State private var tip: TipSelection = .none
	@State private var openSettings = false
	@State private var inputNumber:Double = 0
	@State private var workingResult:Double = 0.00
	@FocusState private var isInputDone: Bool //keyboard behavior
	
	
	var body: some View {
		
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.title)
		.navigationTitle("Tip Calculator")
		.navigationBarTitleDisplayMode(.large)

		
		
			// show the number and have a backround rounded rectangle behind the number
		TextField("Amount", value: $inputNumber, format: .number)
			.keyboardType(.decimalPad)
			.focused($isInputDone)
			.multilineTextAlignment(.trailing)
			.font(.system(size: 70, weight: .bold))
			.foregroundStyle(.red)
			.frame(maxWidth: .infinity)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.fill(Color.secondary.opacity(0.3))
			)
			.toolbar {
				ToolbarItemGroup(placement: .keyboard){
					Spacer()
					Button("Done") {
						isInputDone = false
					}
					.padding(.vertical, 20)
				}
			}
		
			// Stack 1 - 10%
		HStack {
			Button {
				workingResult = inputNumber * 1.10
			} label: {
				Text("+ 10%")
					.font(.headline)
					.fontWeight(.bold)
					.foregroundStyle(.white)
					.frame(width: 100, height: 100)
					.background(
						RoundedRectangle(cornerRadius: 16)
							.fill(Color.green)
					)
			}
			.buttonStyle(.plain)
			.padding(.top, 50)
			
			
			
				//Button #2 - 20%
			Button {
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
			.padding(.top, 50)
			
			
				//Button # 3 - 30%
			Button {
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
			.padding(.top, 50)
		}
		
		
		HStack {
			Text("Total amount plus tip selected will be this:")
				.font(.system(size:20))
				.bold()
		}
		.padding(.top, 50)
		
		
			//Show the result number calculated after the percentage is applied
//		VStack(alignment:.leading){
//			Text(String(workingResult))
//				.font(.system(size: 80))
//				.bold()
//				.foregroundColor(.green)
//				.frame(maxWidth: .infinity, maxHeight: 70)
//				.background(
//					RoundedRectangle(cornerRadius: 10)
//						.fill(Color.secondary)
//				)
//			
//		}
		
		
		
		
		
		VStack(alignment: .leading, spacing: 6) {
//			Text("Total with tip")
//				.font(.subheadline.weight(.medium))
//				.foregroundStyle(.secondary)
			
			Text(workingResult, format: .currency(code: "USD"))
				.font(.system(size: 64, weight: .bold, design: .rounded))
				.minimumScaleFactor(0.4)
				.lineLimit(1)
				.contentTransition(.numericText())
				.foregroundStyle(.primary)
				.frame(maxWidth: .infinity, alignment: .trailing)
				.padding(.horizontal, 20)
				.padding(.vertical, 16)
				.background(
					RoundedRectangle(cornerRadius: 20, style: .continuous)
						.fill(.green.opacity(0.15))
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
		.padding(.top, 50)
	}
}




#Preview {
	ContentView()
}
