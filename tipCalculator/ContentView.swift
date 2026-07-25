//
//  ContentView.swift
//  tipCalculator
//
//  Created by Richier on 7/24/26.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		
		
			
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.largeTitle)
		.padding(.top, 60)
		

		HStack{
			Text("PLACEHOLDER")
		}
		.padding(.top, 100)
		.bold()
		.foregroundColor(Color.mint)
		.backgroundStyle(RoundedRectangle)
		
		
		
		HStack {
			
			Text("The total amount based onf the percentage selested will be this:")
		}
		.padding(.top, 300)
		
		
		
	
		
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
		.padding(.top)
			
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
