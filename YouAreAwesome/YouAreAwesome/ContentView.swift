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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        ZStack {
            VStack {
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
                
                
                Button("Show Message") {
                    let messages = ["You are Awesome!",
                                    "You are a Code Monster",
                                    "You are Great!",
                                    "You are Fantastic!",
                                    "Swifty"]
                    
                    
                    var messageNumber: Int
                    repeat {
                        messageNumber = Int.random(in: 0...messages.count-1)
                    } while messageNumber == lastMessageNumber
                    messageString = messages[messageNumber]
                    lastMessageNumber = messageNumber
                    
//                    var imageNumber = Int.random(in: 0...9)
//                    while imageNumber == lastImageNumber {
//                        imageNumber = Int.random(in: 0...9)
//                    }
                    var imageNumber: Int
                    repeat {
                        imageNumber = Int.random(in: 0...9)
                    } while imageNumber == lastImageNumber
                    
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                    
                    imageName = "image\(Int.random(in: 1...9))"
                    
                    
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
