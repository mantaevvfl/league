//
//  StandingList.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

struct StandingList: View {
    var teams: [Team]
    @State var showingProfile: Bool = false
    
    var body: some View {
        NavigationView {
            List
            {
                ForEach(teams, id: \.id) {team in
                        NavigationLink(destination: StandingDetail(team: team, matches: matches)) {
                            StandingRow(team: team)
                        }
                        
                    }
            }
            .navigationTitle("Clubs")
            .toolbar {
                Button(action: {showingProfile.toggle()}) {
                        Image(systemName: "person.crop.circle")
                            .accessibilityLabel("User Profile")
                }
                .sheet(isPresented: $showingProfile) {
                    ProfileHost()
                }
            }
        }
    }
}

struct StandingList_Previews: PreviewProvider {
    static var previews: some View {
        StandingList(teams: filteredTeams)
    }
}
