//
//  Order.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/10/23.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
}
