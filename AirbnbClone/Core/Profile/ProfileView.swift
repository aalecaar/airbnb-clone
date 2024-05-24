//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by xx on 23/05/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading, spacing: 32) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Profile")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        
                        Text("Log in to start planning your next trip")
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Log in")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .clipShape(.buttonBorder)
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                        
                        Button {
                            
                        } label: {
                            Text("Sign up")
                                .fontWeight(.semibold)
                                .underline()
                                .foregroundStyle(.black)
                        }
                    }
                    .font(.caption)
                }
                
                
                VStack(spacing: 24) {
                    ForEach(0..<3, id: \.self) { row in
                        NavigationLink {
                            Text("It works!")
                        } label: {
                            ProfileOptionRowView(imageName: "gear", title: "Settings")
                        }
                        .foregroundStyle(.black)

                        
                    }
                }
                .padding(.vertical)

            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
