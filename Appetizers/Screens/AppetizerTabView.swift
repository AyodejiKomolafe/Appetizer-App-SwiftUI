//
//  ContentView.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/8/23.
//

import SwiftUI

struct AppetizerTabView: View {
    init() {
        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
    }
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
