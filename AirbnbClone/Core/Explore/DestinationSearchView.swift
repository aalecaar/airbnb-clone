//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by xx on 22/05/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @State private var destinationSearchText = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numberOfAdultGuests = 0
    @Binding var dismiss: Bool
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                    withAnimation(.snappy) {
                        dismiss.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !destinationSearchText.isEmpty {
                    Button("Clear") {
                        destinationSearchText = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destinationSearchText)
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
                    CollapsiblePickerView(title: "Where", description: "Add destination")
                }
                
            }
            .collapsible()
            .frame(height: selectedOption == .location ? 120 : 64)

            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsiblePickerView(title: "When", description: "Add dates")
                }
            }
            .collapsible()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who's coming?")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper("\(numberOfAdultGuests) Adults") {
                        numberOfAdultGuests += 1
                    } onDecrement: {
                        if numberOfAdultGuests > 0 {
                            numberOfAdultGuests -= 1
                        }
                    }
                    
                    
                    
                } else {
                    CollapsiblePickerView(title: "Who", description: "Add guests")
                }
            }
            .collapsible()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
        }
        
        Spacer()
    }
}

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct CollapsiblePickerModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .background(.white)
            .clipShape(.rect(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

extension View {
    func collapsible() -> some View {
        modifier(CollapsiblePickerModifier())
    }
}

#Preview {
    DestinationSearchView(dismiss: .constant(false))
        .preferredColorScheme(.light)
}


