//
//  ProfileSummary.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        
        VStack(spacing: 15) {
                
            Text(profile.username)
                .font(.title)
                .bold()
            
            Text("Favourite Team: \(profile.favouriteTeam)")
            Text("Notifcations: \(profile.notifications ? "On" : "Off")")
            Text("Describe Yourself: \(profile.description.rawValue)")
            
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
