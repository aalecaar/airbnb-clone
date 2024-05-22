//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by xx on 21/05/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    @State private var images: [ImageResource] = [.listing1, .listing2, .listing3, .listing4, .listing5, .listing6]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)

    }
}

#Preview {
    ListingImageCarouselView()
}
