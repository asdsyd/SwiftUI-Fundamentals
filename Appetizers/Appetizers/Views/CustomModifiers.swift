//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Asad Sayeed on 16/11/24.
//

import SwiftUI

struct StandardButtonStlye: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}


extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStlye())
    }
}
