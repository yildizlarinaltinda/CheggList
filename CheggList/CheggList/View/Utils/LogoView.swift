//
//  LogoView.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/27/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        VStack {
            
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                
            
            Text("CheggList")
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.semibold)
            
        }
        
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            LogoView()
        }
    }
}
