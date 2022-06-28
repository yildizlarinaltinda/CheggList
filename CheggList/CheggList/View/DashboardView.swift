//
//  DashboardView.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/28/22.
//

import SwiftUI

struct DashboardView: View {
    
    
    let user: AppUser
    
    @State  var searchText: String = ""
    
    @ObservedObject var viewModel = TODOViewModel()
    
    var body: some View {
    
        ZStack {
            
            VStack {
                
                HStack {
                    Spacer()
                    Text("- CheckList -")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                    Spacer()
                    
                } // end of HStack
                .overlay {
                    HStack {
                        Spacer()
                        Button {
                            AuthViewModel.shared.signout()
                        } label: {
                            Text("Logout")
                                .foregroundColor(Color(.systemGray))
                        }
                        
                        .padding(.trailing)
                        
                    }
                } // end of HStack Overlay
                
                SearchBarView(searchText: $searchText)
                    .padding()
                
            } // end of VStack
            
            
        } // end of ZStack
    
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
