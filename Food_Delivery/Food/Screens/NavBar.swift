//
//  navBar.swift
//  Food
//
//  Created by Safan on 2023-08-24.
//

import SwiftUI

struct NavBar: View {
    @State private var selection = 1
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
            }.tag(1)
            
            
            CartView().tabItem {
                VStack {
                    Image(systemName: "cart.fill")
                    Text("Carts")
                }
                
            }.tag(2)
            
            
            CheckOut().tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("Favorite")
                }
                
            }.tag(3)
            
            
            Text("Profile").tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                
            }.tag(3)
        }
        .accentColor(.yellow)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
