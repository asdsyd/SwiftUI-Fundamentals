//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 05/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
//    var framework: Framework
//    @Binding var isShowingDetailView: Bool
//    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
                .frame(minWidth: 300, minHeight: 175)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 40))
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding(14)
            
            Spacer()
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                Label("Learn More", systemImage: "book.pages.fill")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            .tint(.purple)
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.pages.fill")
//            }
//            .buttonStyle(.borderedProminent)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
//            .controlSize(.large)
//            .tint(.purple)
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
}
