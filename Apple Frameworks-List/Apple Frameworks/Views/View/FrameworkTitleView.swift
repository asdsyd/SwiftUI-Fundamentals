//
//  FrameworkTitleView.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 08/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color(.label))
                .padding()

        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
