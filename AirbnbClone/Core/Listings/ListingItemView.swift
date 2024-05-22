//
//  Listing.swift
//  AirbnbClone
//
//  Created by xx on 21/05/24.
//

import SwiftUI

struct ListingItemView: View {
    @State private var images: [ImageResource] = [.listing1, .listing2, .listing3, .listing4, .listing5, .listing6]
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(.rect(cornerRadius: 10))
            
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mil away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    
                    HStack {
                        Text("$500")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                    .foregroundStyle(.black)

                }

                
                Spacer()
                
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")

                     Text("4.34")
                }
                .foregroundStyle(.black)

            }
        }
    }
}

#Preview {
    ListingItemView()
}
