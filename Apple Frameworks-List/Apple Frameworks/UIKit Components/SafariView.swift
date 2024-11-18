//
//  SafariView.swift
//  Apple Frameworks
//
//  Created by Asad Sayeed on 08/11/24.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType,
                                context: UIViewControllerRepresentableContext<SafariView>) {}
}
