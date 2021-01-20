//
//  ProfileEditor.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Divider()
                TextField("Username", text: $profile.username)
            }
            HStack {
                Text("Favourite Team")
                Divider()
                TextField("Team", text: $profile.favouriteTeam)
            }
            Toggle(isOn: $profile.notifications) {
                Text("Enable Notifications")
            }
            Picker("Describe Yourself", selection: $profile.description) {
                ForEach(Profile.Trait.allCases) {trait in
                    Text(trait.rawValue).tag(trait)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(Profile.default))
    }
}
