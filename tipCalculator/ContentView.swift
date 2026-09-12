import SwiftUI


struct ContentView: View {
	
		//custom type for the selection
	enum TipSelection: Equatable {
		case none
		case percent(Double)
		case custom(amount: Double)
	}
	
	
		// the three quick tip buttons live here, add more if i want
	let quickTips: [Double] = [0.10, 0.20, 0.30]
	
	
		//state to track the setting variable status
	@State private var tip: TipSelection = .none
	@State private var inputNumber:Double = 0
	@State private var customAmount: Double = 0
	@State private var showCustomPrompt = false
	@FocusState private var isInputDone: Bool //keyboard behavior
	
	
		// just the tip by itself, so i can show it on its own line
	private var tipAmount: Double {
		switch tip {
			case .none:
				return 0
			case .percent(let p):
				return inputNumber * p
			case .custom(let amount):
				return amount
		}
	}
	
	
	private var total: Double {
		inputNumber + tipAmount
	}
	
	
		// currency comes from the phone now instead of me hardcoding USD
	private var currency: String {
		Locale.current.currency?.identifier ?? "USD"
	}
	
	
	var body: some View {
		
			// everything lives inside one ScrollView so the keyboard cant cover the total
		ScrollView {
			
			VStack(spacing: 24) {
				
					// show the number and have a backround rounded rectangle behind the number
				VStack(alignment: .leading, spacing: 8) {
					
					Text("Enter you bill amount here:")
						.font(.headline)
						.foregroundStyle(.secondary)
					
					HStack(alignment: .firstTextBaseline, spacing: 4) {
						
						Text(Locale.current.currencySymbol ?? "$")
							.font(.system(size: 40, weight: .semibold, design: .rounded))
							.foregroundStyle(.secondary)
						
						TextField("0", value: $inputNumber, format: .number)
							.keyboardType(.decimalPad)
							.focused($isInputDone)
							.multilineTextAlignment(.trailing)
							.font(.system(size: 56, weight: .bold, design: .rounded))
							.minimumScaleFactor(0.5)
							.lineLimit(1)
					}
				}
				.padding(20)
				.frame(maxWidth: .infinity, alignment: .leading)
				.background(
					RoundedRectangle(cornerRadius: 20, style: .continuous)
						.fill(Color(.secondarySystemGroupedBackground))
				)
				
				
					// Stack 1 - the 10% / 20% / 30% buttons, one ForEach instead of copy paste
				VStack(alignment: .leading, spacing: 12) {
					
					Text("Pick your tip")
						.font(.headline)
						.foregroundStyle(.secondary)
					
					HStack(spacing: 12) {
						ForEach(quickTips, id: \.self) { p in
							TipButton(
								title: p.formatted(.percent.precision(.fractionLength(0))),
								isSelected: tip == .percent(p)
							) {
								tip = .percent(p)
							}
						}
					}
					
						// Custom button, shows the amount once i picked one
					TipButton(title: customTitle, isSelected: isCustomSelected) {
						showCustomPrompt = true
					}
				}
					// the buttons need this or the green fill just snaps in with no animation
				.animation(.snappy(duration: 0.2), value: tip)
				.alert("Custom tip", isPresented: $showCustomPrompt) {
					TextField("Amount", value: $customAmount, format: .currency(code: currency))
						.keyboardType(.decimalPad)
					Button("Cancel", role: .cancel) { }
					Button("Add") { tip = .custom(amount: customAmount) }
				} message: {
					Text("Enter the tip amount you want to add.")
				}
				
				
					// Total amount plus tip selected will be this:
				VStack(spacing: 14) {
					
					HStack {
						Text("Bill")
							.foregroundStyle(.secondary)
						Spacer()
						Text(inputNumber, format: .currency(code: currency))
							.font(.body.weight(.semibold).monospacedDigit())
							.contentTransition(.numericText())
					}
					
					HStack {
						Text("Tip")
							.foregroundStyle(.secondary)
						Spacer()
						Text(tipAmount, format: .currency(code: currency))
							.font(.body.weight(.semibold).monospacedDigit())
							.contentTransition(.numericText())
					}
					
					Divider()
					
					HStack(alignment: .firstTextBaseline) {
						Text("Total")
							.bold()
						Spacer()
						Text(total, format: .currency(code: currency))
							.font(.system(size: 44, weight: .bold, design: .rounded))
							.minimumScaleFactor(0.4)
							.lineLimit(1)
							.contentTransition(.numericText())
					}
				}
				.padding(20)
				.background(
					RoundedRectangle(cornerRadius: 20, style: .continuous)
						.fill(Color(.secondarySystemGroupedBackground))
				)
					// numericText only rolls the digits if something animates the change
				.animation(.snappy(duration: 0.25), value: total)
				
				// removed since the full view is a scrollview
					//Button to reset the value to zero.
//				Button {
//					inputNumber = 0
//					customAmount = 0
//					tip = .none
//					isInputDone = false
//				} label: {
//					Text("Reset")
//						.bold()
//						.foregroundColor(Color.red)
//						.frame(maxWidth: .infinity, minHeight: 60)
//				}
//				.buttonStyle(.glass)
//				.disabled(inputNumber == 0 && tip == .none)
//				
			}
			.padding(.bottom, 20)
			.padding(.horizontal, 20)
			.padding(.vertical, 24)
		}
		.scrollDismissesKeyboard(.interactively)
		.background(Color(.systemGroupedBackground))
		.navigationTitle("Tip Calculator")
		.navigationBarTitleDisplayMode(.large)
			// "Done button"
		.toolbar {
			ToolbarItemGroup(placement: .keyboard){
				Spacer()
				Button("Done") {
					isInputDone = false
				}
			}
		}
	}
	
	
		// small helpers so the body above stays readable
	private var isCustomSelected: Bool {
		if case .custom = tip { return true }
		return false
	}
	
	
	private var customTitle: String {
		if case .custom(let amount) = tip {
			return "Custom  " + amount.formatted(.currency(code: currency))
		}
		return "Custom "
	}
	
}




	// one button i reuse for all the tips instead of writing it 4 times
struct TipButton: View {
	
	let title: String
	let isSelected: Bool
	let action: () -> Void
	
	var body: some View {
		
		Button {
			action()
		} label: {
			Text(title)
				.font(.headline)
				.fontWeight(.bold)
				.foregroundStyle(isSelected ? Color.white : Color.green)
				.frame(maxWidth: .infinity, minHeight: 100)
				.background(
					RoundedRectangle(cornerRadius: 16)
						.fill(isSelected ? AnyShapeStyle(Color.green) : AnyShapeStyle(Color.green.opacity(0.15)))
				)
		}
		.buttonStyle(.plain)
	}
}




#Preview {
	NavigationStack {
		ContentView()
	}
}
