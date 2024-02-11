//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [Color("SkyBlue"), .yellow])
                )
                .ignoresSafeArea()
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(message)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
                HStack {
                    Button ("Awesome") {
                        message = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button ("Great") {
                        message = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
//                .tint(Color("Vermillion"))
            }
            
        }
    }
}

#Preview {
    ContentView()
}
