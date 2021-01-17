//
//  ProfileSummary.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile = Profile.default
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text(profile.username)
                    .font(.title)
                    .bold()
                
                Text("Favorite Team: \(profile.favoriteTeam)")
                Text("Notifcations: \(profile.notifications ? "On" : "Off")")
                Text("Describe Yourself: \(profile.description.rawValue)")
                
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary()
    }
}
