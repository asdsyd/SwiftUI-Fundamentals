//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Asad Sayeed on 31/10/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(title: "Test button",
                  backgroundColor: .blue,
                  textColor: .white)
}
