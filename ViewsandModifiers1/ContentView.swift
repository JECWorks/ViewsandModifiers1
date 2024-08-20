//
//  ContentView.swift
//  ViewsandModifiers1
//
//  Created by Jason Cox on 8/11/24.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
//            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
    
}

struct ContentView: View {
    @State private var useRedText = true
    var motto1: some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells2: some View {
        Text("Oculus reparo")
        Text("Expelliarmus")
    }
    
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
            motto1
                .foregroundStyle(.green)
            motto2
                .foregroundStyle(.teal)
            spells
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            
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
        
        VStack(spacing: 10) {
                Text("First")
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(.capsule)

                CapsuleText(text: "Second")
                CapsuleText(text: "Third")
                    .foregroundStyle(.yellow)
                }
    }
}

#Preview {
    ContentView()
}
