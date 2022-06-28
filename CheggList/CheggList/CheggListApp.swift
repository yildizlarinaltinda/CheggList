//
//  CheggListApp.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/26/22.
//

import SwiftUI
import Firebase

@main
struct CheggListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}

