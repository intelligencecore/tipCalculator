//
//  ContentView.swift
//  tipCalculator
//
//  Created by Richier on 7/24/26.
//

import SwiftUI



var number:Double = 0.0
var percentageAppliedToFinalResult: Double = 0.0
var resultHolder:Double = 0.0

struct ContentView: View {
	//state to track the setting variable status
	@State private var openSettings = false
	
	
	
	var body: some View {
			
		HStack {
			Text("Enter you bill amount here:")
		}
		.bold()
		.font(.title)
		.padding(.top, 60)
		
		// show the number and have a backround rounded rectangle behind the number
		HStack(){
			Text(String(number))
		}
		.font(.system(size: 80))
		.padding()
		.bold()
		.foregroundColor(Color.red)
		.background(
			RoundedRectangle(cornerRadius: 10)
				.fill(Color.secondary)
				.frame(width: 380, height: 70)
		)
		
		
		// 3 stacks to show the different percentages to leave as a tip
		
		
		
		// Stack 1 - 10%
		
		HStack(spacing: 16){
			HStack {
				Button{
						// button functionality
					print("This should print 10")
				} label: {
					Text("+ 10%")
						.foregroundColor(Color.green)
						.bold()
				}
			}
			.padding()
			.bold()
			.background(
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.primary)
					.frame(width: 80, height: 80)
			)
			
			
			//Button #2 - 20%
			HStack {
				Button{
						// button functionality
					print("This should print 20")
				} label: {
					Text("+ 20%")
						.foregroundColor(Color.green)
						.bold()
				}
			}
			.padding()
			.bold()
			.background(
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.secondary)
					.frame(width: 80, height: 80)
			)
			
			
			//Button # 3 - 30%
			HStack {
				Button {
					print("This should print 30")
				} label: {
					Text("+ 30%")
						.foregroundColor(Color.green)
				}
				.padding()
				.bold()
				.background(
					RoundedRectangle(cornerRadius: 10)
				.fill(Color.primary)
				.frame(width: 80, height: 80)
				)
			}
			
		}
		
		
		//text saying that the amount of money will be based on the percentage selected
		HStack {
		   Text("The total amount with the tip selected will be this:")
				.font(.system(size:17))
				.bold()
		}
		.padding(.top, 50)
		
		
		//Show the result number calculated after the percentage is applied
		HStack(){
			Text(String(number))
		}
		.font(.system(size: 80))
		.padding()
		.bold()
		.foregroundColor(Color.red)
		.background(
			RoundedRectangle(cornerRadius: 10)
				.fill(Color.secondary)
				.frame(width: 380, height: 70)
		)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
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

#Preview {
    ContentView()
}
