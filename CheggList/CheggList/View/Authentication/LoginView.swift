//
//  LoginView.swift
//  CheggList
//
//  Created by Hasan Yildiz on 6/27/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                    
                    
                
                VStack(spacing: 20) {
                    EmailTextField(text: $email)
                        
                    
                    PasswordSecureField(text: $password, placeholder: "Password")
                } // End of VStack
                .padding(.horizontal, 32)
                
                
                HStack {
                    Spacer()
                    
                    Button {
                        // Forgot Password Action
                        
                    } label: {
                        Text("Forget Password")
                            .foregroundColor(.white)
                            .font(.system(size: 13, weight: .semibold))
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                } // End of HStack
                
                
                
                Button {
                    // Sign In Action
                } label: {
                    
                    AuthenticateButtonView(text: "Sign In")
                        .padding()
                    
                }
                
                Spacer()

                
            } // End of VStack
         
            
        } // End of ZStack
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
