//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by xx on 21/05/24.
//

import SwiftUI

struct ListingDetailView: View {
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
            .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.87")
                        
                        Text("-")
                        
                        Text("20 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                    
                }
                .font(.caption)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(12)
            
            Divider()
             
            HStack {
                VStack(alignment: .leading) {
                    Text("Entire villa hosted by")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("John Apple")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)

                    Text("4 guests - 4 bedrooms - 6 beds - 3 baths")
                        .font(.caption)
                }
                
                Spacer()
                
                Image(.profilePic)
                    .resizable()
                    .scaledToFill()
                    .clipShape(.circle)
                    .frame(width: 70, height: 70)
                
            }
            .padding(12)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "door.left.hand.open")
                        .font(.title3)
                    
                    VStack(alignment: .leading) {
                        Text("Self check-in")
                            .font(.headline)
                        
                        Text("Check yourself in with the keypad.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }

                HStack {
                    Image(systemName: "person.fill.checkmark")
                        .font(.title3)
                    
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.headline)
                        
                        Text("Superhosts are experienced. highly rated hosts who are commited to providing great experiences for their guests.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                }

            }
            .frame(maxWidth: .infinity)
            .padding(12)

        }
    }
}

#Preview {
    ListingDetailView()
        .preferredColorScheme(.light)
}
