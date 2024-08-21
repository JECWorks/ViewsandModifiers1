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

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
            ZStack(alignment: .bottomTrailing) {
                content
                Text(text)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.green)
            }
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
        Color.teal
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
        
        VStack(spacing: 10) {
                Text("First")
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(.capsule)

                CapsuleText(text: "Second")
                CapsuleText(text: "Third")
                    .modifier(Title())
                }
    }
}

#Preview {
    ContentView()
}
