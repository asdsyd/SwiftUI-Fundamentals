//
//  OrderView.swift
//  Appetizers
//
//  Created by Asad Sayeed on 12/11/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                                .listRowSeparator(.hidden)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier:"%.2f") - Place Order")
                    }
                    .standardButtonStyle()
                    .padding(.bottom, 35)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: .emptyOrder,
                               message: "You have no items in your order.\nPlease add an appetizer")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}
