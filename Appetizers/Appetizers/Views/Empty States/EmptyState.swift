//
//  EmptyState.swift
//  Appetizers
//
//  Created by Asad Sayeed on 16/11/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: ImageResource
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .opacity(0.75)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: .emptyOrder, message: "Test message.\n I am making it a lilltle long for testing")
}
