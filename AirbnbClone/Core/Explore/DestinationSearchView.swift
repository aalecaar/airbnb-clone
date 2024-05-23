//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by xx on 22/05/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @State private var searchDestinations = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @Binding var show: Bool
    var body: some View {
        VStack {
            
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $searchDestinations)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth:  0.5)
                            .foregroundStyle(.secondary)
                    }
                } else {
                    CollapsablePickerView(title: "Where", description: "Add destination")
                }
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(.rect(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            VStack {
                if selectedOption == .dates {
                    HStack {
                        Text("Show expanded view")
                        
                        Spacer()
                    }
                } else {
                    CollapsablePickerView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(.rect(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            
            VStack {
                if selectedOption == .guests {
                    HStack {
                        Text("Show expanded view")
                        
                        Spacer()
                    }
                } else {
                    CollapsablePickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(.rect(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            
            
        
               
        }
    }
}

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}


#Preview {
    DestinationSearchView(show: .constant(false))
}


