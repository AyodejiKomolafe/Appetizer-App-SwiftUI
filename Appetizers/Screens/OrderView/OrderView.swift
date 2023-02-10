//
//  OrderView.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/8/23.
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
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \n Please add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
            .font(.body)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
