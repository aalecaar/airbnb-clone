//
//  WishlistsView.swift
//  AirbnbClone
//
//  Created by xx on 24/05/24.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(.buttonBorder)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
