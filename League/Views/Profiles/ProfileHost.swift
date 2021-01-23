//
//  ProfileHost.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button(action: {
                        editMode?.wrappedValue = .inactive
                    }) {
                        Text("Cancel")
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: draftProfile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
