//
//  ProfileHost.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    
    @EnvironmentObject var modelData: ModelData
    @State private var currentProfile = Profile.default
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        currentProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary()
            }
            else {
                ProfileEditor(profile: $currentProfile)
                    .onAppear {
                        // Delay edit propagation
                        currentProfile = modelData.profile
                    }
                    .onDisappear {
                        // Save changes made
                        modelData.profile = currentProfile
                        currentProfile = modelData.profile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
