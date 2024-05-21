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
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        
                }
            }
            .frame(height: 320)
            .clipShape(.rect(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("12 mil away")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    Text("Nov 3 - 10")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("night")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")

                     Text("4.34")
                }
            }
        }
        .padding()
        
    }
}

#Preview {
    ListingItemView()
}
