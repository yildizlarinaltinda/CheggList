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
        
        
        
        NavigationView {
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
                    
                NavigationLink (
                    destination: SignupView()
                        .navigationBarHidden(true),
                    label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        
                        .foregroundColor(.white)
                    }
                )
                .padding(.bottom, 16)

                } // End of VStack
                .padding(.top, -44)
             
            }
        } // End of ZStack
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
