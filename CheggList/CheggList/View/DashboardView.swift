//
//  DashboardView.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/28/22.
//

import SwiftUI

struct DashboardView: View {
    
    
    let user: AppUser
    
    
    
    var body: some View {
        
        VStack{
            Text("DashboardView")
            Button {
                AuthViewModel.shared.signout()
            } label: {
                Text("Log out")
            }
            
            .padding()
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
