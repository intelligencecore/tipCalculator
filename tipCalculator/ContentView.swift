import SwiftUI


	// make gitignore file to remove .dstore files


struct ContentView: View {
	
		//custom type for the selection
	enum TipSelection {
		case none
		case percent(Double)
		case custom(amount: Double)
	}
	
	
	
	private var total: Double {
		switch tip {
			case .none:
				return inputNumber
			case .percent(let p):
				return inputNumber * (1 + p)
			case .custom(let amount):
				return inputNumber + amount
		}
	}
	
	
	
	@State private var customAmount: Double = 0
	
		//state to track the setting variable status
	@State private var tip: TipSelection = .none
	@State private var openSettings = false
	@State private var inputNumber:Double = 0
	@State private var showCustomPrompt = false
	@FocusState private var isInputDone: Bool //keyboard behavior
	
	
	var body: some View {
		
		
		Text("Enter you bill amount here:")
			.bold()
			.font(.title)
			.navigationTitle("Tip Calculator")
			.navigationBarTitleDisplayMode(.automatic)
		
		
		
			// show the number and have a backround rounded rectangle behind the number
		TextField("Amount", value: $inputNumber, format: .number)
			.keyboardType(.decimalPad)
			.focused($isInputDone)
			.multilineTextAlignment(.trailing)
			.font(.system(size: 70, weight: .bold))
			.foregroundStyle(.primary)
			.frame(maxWidth: .infinity)
			.background(
				RoundedRectangle(cornerRadius: 11)
					.fill(Color.secondary.opacity(0.3))
			)
			// "Done button"
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
				tip = .percent(0.10)
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
				tip = .percent(0.20)
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
				tip = .percent(0.30)
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
			
		Button {
			showCustomPrompt = true
		} label: {
			
			Text("Custom ")
				.font(.headline)
				.fontWeight(.bold)
				.foregroundStyle(.white)
				.frame(
					width: 320, height: 100)   // size the label, not the shape
				.background(
					RoundedRectangle(cornerRadius: 16)
						.fill(Color.green)
				)
				.alert("Custom tip", isPresented: $showCustomPrompt) {
					TextField("Amount", value: $customAmount, format: .currency(code: "USD"))
						.keyboardType(.decimalPad)
					Button("Cancel", role: .cancel) { }
					Button("Add") { tip = .custom(amount: customAmount) }
				} message: {
					Text("Enter the tip amount you want to add.")
				}
				.buttonStyle(.plain)
			
			
			
		}
		
		HStack {
			Text("Total amount plus tip selected will be this:")
				.font(.system(size:20))
				.bold()
		}
		.padding(.top, 50)

		VStack(alignment: .leading, spacing: 6) {
			
			Text(total, format: .currency(code: "USD"))
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
				inputNumber = 0
				tip = .none
			} label: {
				Text("Reset")
					.bold()
					.foregroundColor(Color.red)
					.frame(width: 300, height: 60)
			}
			.buttonStyle(.glass)
		}
		.padding(.bottom, 20)
	}
}




#Preview {
	ContentView()
}
