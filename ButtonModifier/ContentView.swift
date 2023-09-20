//
//  ContentView.swift
//  ButtonModifier
//
//  Created by XING ZHAO on 2023-09-19.
//

import SwiftUI

struct DefaultButtonModifier: ViewModifier {
    let color: Color
    // impplementation
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func defaultButtonFormatting(color: Color) -> some View {
        self.modifier(DefaultButtonModifier(color: color))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
        Text("Button 1")
                .defaultButtonFormatting(color: .red)
                .onTapGesture {
                    print("Tapped")
                }
        Text("Button 2")
                .defaultButtonFormatting(color: .purple)
        Text("Button 3")
                    .defaultButtonFormatting(color: .blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
