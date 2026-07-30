import SwiftUI





struct ContentView: View {
		//state to track the setting variable status
	@State private var openSettings = false
		// not to be 100% accurate
	@State private var number:Float = 0.00
	@State private var workingResult:Float = 0.00
	
	
		// do c = a + b
	
	var body: some View {
		
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.title)
		.padding(.top, 60)
		
			// show the number and have a backround rounded rectangle behind the number
		TextField("Quantity", value: $number, format: .number)
			.keyboardType(.numberPad)
			.multilineTextAlignment(.center)
			.font(.system(size: 40, weight: .bold))
			.foregroundStyle(.red)
			.frame(width: 370, height: 70)          // size the field itself
			.background(
				RoundedRectangle(cornerRadius: 12)
					.fill(Color.secondary.opacity(0.3))  // no .frame here — it wraps the field
			)
		
		
		
			// 3 stacks to show the different percentages to leave as a tip
		
		
		
			// Stack 1 - 10%
		HStack {
			Button {
				print("This should print input + 10%")
				number *= 1.10
				
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
			.buttonStyle(.plain)
			
			
			
				//Button # 3 - 30%
			Button {
				print("This should print: input + 30%")
			} label: {
				Text("+ 30%")
					.font(.headline)
					.fontWeight(.bold)
					.foregroundStyle(.white)
					.frame(width: 100, height: 100)   // size the label, not the shape
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
		
		Text(String(number))
			.font(.system(size: 80))
			.bold()
			.foregroundColor(.red)
			.frame(width: 390, height: 100)   // tall enough for size-80 text
			.background(
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.secondary)
			)
		
		
		
		VStack {
				//Button to reset the value to zero.
			Button {
				number = 0.00
			} label: {
				Text("Reset")
					.padding()
					.bold()
					.foregroundColor(Color.red)
			}
			.glassEffect(.regular.tint(.purple.opacity(0.3)).interactive())
		}
		.padding(.top, 90)
		
		
		
		
			// stack to jump between screens
		HStack {
			TabView {
				NavigationStack {
						// Home screen goes here
				}
				.tabItem {
					Label("Home", systemImage: "house")
				}
				
				NavigationStack {
					
						// dividie screen for multple people screen goes here
				}
				.tabItem {
					Label("Divide", systemImage: "person.3")
				}
				
				NavigationStack {
						// Settings screen goes here
					List {
						NavigationLink("Account", destination: SettingsView())
						
					}
					.navigationTitle("Settings")
					
					
					SettingsView()
						.navigationTitle("Settings")
				}
				.tabItem {
					Label("Settings", systemImage: "gear")
				}
				
				
			}
		}
		.padding(.top, 100)
		
		
		
		//I button to take to the app info

		NavigationStack {
		}
		
	}
	
	
}

#Preview {
	ContentView()
}
