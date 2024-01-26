//
//  RegistrationView.swift
//  SwiftChat
//
//  Created by Chris Min on 26/01/2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                VStack (alignment: .leading, spacing: 20) {
                    
                    // WELCOME TEXTS
                    Text("Get Started.")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("Create your account")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(.blue))
                        .padding(.bottom, 20)
                    
                    
                    // REGISRTATION FORM
                    VStack(spacing: 30) {
                        
                        CustomTextField(image: "person", placeholderText: "Enter your fullname", isSureField: false, text: $email)
                        
                        CustomTextField(image: "person", placeholderText: "Enter your username", isSureField: false, text: $email)
                        
                        CustomTextField(image: "envelope", placeholderText: "Enter your email", isSureField: false, text: $email)
                        
                        CustomTextField(image: "lock", placeholderText: "Enter your password", isSureField: true, text: $password)
                        
                    }
                    
                }
                
                // SIGN IN BUTTON
                Button(action: {
                    
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundStyle(Color(.white))
                        .frame(width: 340, height: 50)
                        .background(Color(.blue))
                        .clipShape(Capsule())
                        .padding(.vertical, 30)
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                // SIGN IN
                NavigationLink(destination: LoginView()) {
                    HStack {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)
        }
    }
}

#Preview {
    RegistrationView()
}
