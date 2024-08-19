//
//  ContentView.swift
//  ViewsandModifiers1
//
//  Created by Jason Cox on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = true
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
            Button("Hello World") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.green)
            
            
        }
        VStack {
            Button("Hello World") {
                // Conditional modifiers Whatyou'rechecking ? True : False
                        // flip the Boolean between true and false
                        useRedText.toggle()
                    }
            .foregroundStyle(useRedText ? .red : .blue)
            
            if useRedText {
                    Button("Hello World") {
                        useRedText.toggle()
                    }
                    .foregroundStyle(.red)
                } else {
                    Button("Hello World") {
                        useRedText.toggle()
                    }
                    .foregroundStyle(.blue)
                }
        }
        VStack {
            Text("Gryffindor")
                .blur(radius: 5.0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}
