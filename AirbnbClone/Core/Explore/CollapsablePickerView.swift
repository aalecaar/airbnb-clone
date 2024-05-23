//
//  CollapsablePickerView.swift
//  AirbnbClone
//
//  Created by xx on 23/05/24.
//

import SwiftUI

struct CollapsablePickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
//        .padding()
//        .background(.white)
//        .clipShape(.rect(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10 )
    }
}

#Preview {
    CollapsablePickerView(title: "When", description: "Add guests")
}
