//
//  ProfileSummary.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileSummary: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                    
                Text(modelData.profile.username)
                    .font(.title)
                    .bold()
                
                Text("Favourite Team: \(modelData.profile.favouriteTeam)")
                Text("Notifcations: \(modelData.profile.notifications ? "On" : "Off")")
                Text("Describe Yourself: \(modelData.profile.description.rawValue)")
                
            }
        }
        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary()
            .environmentObject(ModelData())
    }
}
