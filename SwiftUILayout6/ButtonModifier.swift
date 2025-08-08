//
//  ButtonModifier.swift
//  SwiftUILayout6
//
//  Created by Lena Hunanian on 08.08.25.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    var isEnabled: Bool
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(isEnabled ? Color.gray : Color.blue)
            .cornerRadius(8)
    }
}
