//
//  BackgroundGradientView.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/27/22.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.5)]),
                       startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
        
        
        
    }
}

struct BackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
