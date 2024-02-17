//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Namaste"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: "cloud.sun.rain.fill")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
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
        }
    }
}


#Preview {
    ContentView()
}
