//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange)
                .padding()
            
            Spacer()
        
            HStack {
                Button ("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
//                    if messageString == message1 {
//                        messageString = message2
//                    } else {
//                        messageString = message1
//                    }
                    
                    messageString = (messageString == message1 ? message2 : message1)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
