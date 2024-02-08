//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
                    
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .italic()
                .background(.yellow)
                .padding()
            
            Button ("Press Me") {
                message = "You Are Awesome!"
            }
            
        }
    }
}

#Preview {
    ContentView()
}
