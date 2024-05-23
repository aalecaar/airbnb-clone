//
//  SearchAndFilterBarView.swift
//  AirbnbClone
//
//  Created by xx on 21/05/24.
//

import SwiftUI

struct SearchAndFilterBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Any Guests")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
           
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.quaternary)
                .shadow(color: .gray.opacity(0.4), radius: 2)
        }
        
    }
}


#Preview {
    SearchAndFilterBarView()
}
