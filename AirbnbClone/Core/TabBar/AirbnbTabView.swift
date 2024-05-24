//
//  AirbnbTabView.swift
//  AirbnbClone
//
//  Created by xx on 24/05/24.
//

import SwiftUI

struct AirbnbTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    AirbnbTabView()
}
