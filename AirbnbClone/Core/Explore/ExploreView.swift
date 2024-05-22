//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by xx on 19/05/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {  
                SearchAndFilterBarView()
                    .padding(.bottom, 20)

                LazyVStack(spacing: 32) {
                    ForEach(0..<10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                        .tint(.black)
                    }
                }
            }
            .padding()
            .navigationDestination(for: Int.self) { listing in
                Text("Listing detail view...")
            }
        }
    }
}

#Preview {
    ExploreView()
}
