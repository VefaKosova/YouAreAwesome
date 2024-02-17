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
            
            Image(systemName: "figure.mind.and.body")
                .resizable()
                .scaledToFill()
                .foregroundStyle(.pink)
                .border(.pink)
                .frame(width: 200, height: 300)
                .clipped()
                .border(.blue)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
                .border(.blue)
            
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
