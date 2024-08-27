//
//  ContentView.swift
//  ViewsandModifiers1
//
//  Created by Jason Cox on 8/11/24.
//

import SwiftUI

struct BlueText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

extension View {
    func blueStyle() -> some View {
        modifier(BlueText())
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    let agents = ["Cyril", "Lana", "Pam", "Sterling"]
    @State private var selection = 0
    
    
    var body: some View {
                
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            GridStack(rows: 4, columns: 4) { row, col in
                Text("R\(row) C\(col)")
            }
            
            .padding()
            
            GridStack(rows: 4, columns: 4) { row, col in
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
                
            }
        }
        .padding()
        // looping over an array to create independent views for each item in it
        VStack {
            ForEach(agents, id: \.self) {
                Text($0)
            }
        }
// ******** Custom Bindings ********
//        let binding = Binding(
//                    get: { selection },
//                    set: { selection = $0 }
//                )
//        
//        return VStack {
//                    Picker("Select a number", selection: binding) {
//                        ForEach(0..<3) {
//                            Text("Item \($0)")
//                        }
//                    }
//                    .pickerStyle(.segmented)
//                }
    }
}

#Preview {
    ContentView()
}
