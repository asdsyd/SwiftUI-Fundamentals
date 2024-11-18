//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Asad Sayeed on 12/11/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
