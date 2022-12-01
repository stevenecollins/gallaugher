//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by stevenecollins on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "Namaste"
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                Image(systemName: "cloud.sun.rain.fill")
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .padding()
                    .background(Color(hue: 0.558, saturation: 0.075, brightness: 1.0))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 30, x:20, y: 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.blue, lineWidth: 1)
                    )
                    .padding()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Spacer()
                                
                HStack {
                    Button("Awesome") {
                        // This is the action performed when the button is pressed
                        messageString = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
