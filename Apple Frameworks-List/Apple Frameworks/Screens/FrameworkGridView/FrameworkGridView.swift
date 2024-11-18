//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 05/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework, isShowingDetailView: .constant(false))
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}



