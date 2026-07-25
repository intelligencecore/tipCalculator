//
//  ContentView.swift
//  tipCalculator
//
//  Created by Richier on 7/24/26.
//

import SwiftUI



var number:Int = 10000


struct ContentView: View {
	
	var body: some View {
		
		
		
			
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.title)
		.padding(.top, 60)
		

		HStack{
			Text(String(number))
		}
		.padding()
		.bold()
		.foregroundColor(Color.mint)
		.background(
			RoundedRectangle(cornerRadius: 10)
				.fill(Color.secondary)
		)
		
		
		HStack {
		   Text("The total amount based onf the percentage selested will be this:")
		}
		.padding(.top, 400)
		
		
		
	
		
		// stack to jump between screens
        VStack {
			HStack {
				TabView {
					NavigationStack {
							// Home screen goes here
					}
					.tabItem {
						Label("Home", systemImage: "house")
					}
					
					NavigationStack {
							// Settings screen goes here
					}
					.tabItem {
						Label("Settings", systemImage: "gear")
					}
				}
			}
		.padding(.top, 100)
			
        }
		
    }
}

#Preview {
    ContentView()
}
