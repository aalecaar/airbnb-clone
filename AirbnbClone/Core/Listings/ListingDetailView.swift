//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by xx on 21/05/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView {
                ListingImageCarouselView()
                    .frame(height: 320)
                    .overlay(alignment: .topLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(.black)
                                .background {
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 36, height: 36)
                                }
                                .padding(32)

                        }
                    }
            
            
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
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(0..<5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .padding(12)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(0..<4) { _ in
                    HStack(spacing: 12) {
                        Image(systemName: "wifi")
                        
                        Text("Wifi")
                        
                        Spacer()
                    }
                }
                
            }
            .padding(12)
            
            Divider()
            
            VStack {
                HStack {
                    Text("Where you'll be")
                        .font(.headline)
                    Spacer()
                }
                
                Map()
                    .frame(width: .infinity,height: 200)
                    .clipShape(.rect(cornerRadius: 12))
            }
            .padding(12)
            
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 90)
        .overlay(alignment: .bottom) {
            VStack {
             
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$800")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.caption)
                        
                        Text("Nov 23 - 30")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
        .preferredColorScheme(.light)
}
