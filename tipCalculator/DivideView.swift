import SwiftUI

struct DivideView: View {
	@State private var divisor = ""
	@State private var inputBill: String = ""
	@State private var operation: Int = 0
	@State private var showResultSheet = false

	var body: some View {

		VStack {
			Text("What's the full amount of the bill that you got?")  // fix the size of this in the iphone screen looks cropped
				.font(.title)
				.padding(.bottom, 10)

			TextField("Bill amount", text: $inputBill)
				.bold()
				.font(.headline)
				.keyboardType(.decimalPad)
		}
		.padding()
		.padding(.bottom, 110)

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
			.padding(.leading, 10)

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

		// now the full ammount of the bill has to be divided between the friends:

		Button {
			inputBill = ""
		} label: {
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
