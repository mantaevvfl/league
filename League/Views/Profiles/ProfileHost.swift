//
//  ProfileHost.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    
    var body: some View {
        
        if editMode?.wrappedValue == .inactive {
            ProfileSummary()
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
