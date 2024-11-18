//
//  AFButton.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 05/11/24.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .frame(width: 280, height: 50)
            .fontWeight(.semibold)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(40)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
