//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by stevenecollins on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    let image0 = "image0"
    let image1 = "image1"
    
    var body: some View {
        ZStack {
            VStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
                
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
                
                
                Button("Show Message") {
                    let message1 = "You are Great"
                    let message2 = "You are Awesome"
                    
                    // Ternary Operator
                    messageString = ( messageString == message1 ? message2 : message1)

                    imageName = "image\(imageNumber)"
                    imageNumber = imageNumber + 1
                    // imageNumber += 1 // Alternative way
                    if imageNumber > 9 {
                        imageNumber = 0
                    }
                    print(imageNumber)
                    
                    
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
