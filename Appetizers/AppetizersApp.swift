//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/8/23.
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
