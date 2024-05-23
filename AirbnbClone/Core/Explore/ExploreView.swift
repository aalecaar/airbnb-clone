//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by xx on 19/05/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(dismiss: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBarView()
                        .padding(.bottom, 20)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }

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
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
           
        }
    }
}

#Preview {
    ExploreView()
}
