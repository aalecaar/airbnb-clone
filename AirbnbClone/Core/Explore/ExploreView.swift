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
                LazyVStack(spacing: 32) {
                    ForEach(0..<10, id: \.self) { listing in
                       ListingItemView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
