//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by stevenecollins on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                //                .border(.orange, width: 1)
                    .padding()
                //                    .background(Color(.gray).opacity(0.15))
                
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 150.0)
                
                Rectangle()
                    .fill(.indigo)
                
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
