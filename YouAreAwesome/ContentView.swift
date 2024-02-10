//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "border frame infinty minimumscalefactor!"
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .padding()
                .frame(width: 300, height: 150)
                .border(.orange, width: 1)
            
            HStack {
                Button ("Awesome") {
                    message = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button ("Great") {
                    message = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5)
        }
    }
}

#Preview {
    ContentView()
}
