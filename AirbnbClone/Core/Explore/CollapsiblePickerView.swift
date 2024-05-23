//
//  CollapsiblePickerView.swift
//  AirbnbClone
//
//  Created by xx on 23/05/24.
//

import SwiftUI

struct CollapsiblePickerView: View {
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
    }
}

#Preview {
    CollapsiblePickerView(title: "When", description: "Add guests")
}
