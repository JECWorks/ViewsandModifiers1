//
//  ContentView.swift
//  ViewsandModifiers1
//
//  Created by Jason Cox on 8/11/24.
//

import SwiftUI

struct ContentView: View {
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
    }
}

#Preview {
    ContentView()
}
