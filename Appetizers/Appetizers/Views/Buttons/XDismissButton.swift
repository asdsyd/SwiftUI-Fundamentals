//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Asad Sayeed on 15/11/24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Image(systemName: "xmark.circle.fill")
                .foregroundStyle(.secondary)
                .padding(10)
        }
    }
}

#Preview {
    XDismissButton()
}
