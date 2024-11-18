//
//  APButton.swift
//  Appetizers
//
//  Created by Asad Sayeed on 15/11/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(8)
    }
}

#Preview {
    APButton(title: "Test")
}
