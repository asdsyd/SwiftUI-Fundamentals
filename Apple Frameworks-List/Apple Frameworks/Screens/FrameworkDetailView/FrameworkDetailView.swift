//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 05/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    
    @Binding var isShowingDetailView: Bool

    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            
            
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
