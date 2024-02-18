//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vefa Kosova on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageString)
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
                Button ("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    messageString = (messageString == message1 ? message2 : message1)
                    
                    //MARK: -
                    //FIXME: -
                    //TODO: - update the imageName variable -
                    imageName = "image\(imageNumber)"
                    imageNumber = imageNumber + 1
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


#Preview {
    ContentView()
}
