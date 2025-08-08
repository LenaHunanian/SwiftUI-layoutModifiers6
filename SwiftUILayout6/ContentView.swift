//
//  ContentView.swift
//  SwiftUILayout6
//
//  Created by Lena Hunanian on 08.08.25.
//

import SwiftUI



struct ContentView: View {
    @State private var isEnabled = false
    var body: some View {
        VStack {
            Button(isEnabled ? "Tapped" :"Tap me") {
                isEnabled.toggle()
            }
            .customizeButton(isEnabled: isEnabled)
        }
        .padding()
    }
}
extension View {
    func customizeButton(isEnabled : Bool) -> some View {
        self.modifier(ButtonModifier(isEnabled: isEnabled))
    }
}

#Preview {
    ContentView()
}
