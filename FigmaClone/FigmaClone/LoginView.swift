//
//  LoginView.swift
//  FigmaClone
//
//  Created by Lama AL Yousef on 17/05/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                VStack(spacing: 20) {
                    Text("Sign In To Figma")
                        .font(.title)
                        .bold()
                    
                    Button(action: {
                        // Continue with Google action
                    }) {
                        HStack {
                            Image("google-logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            
                            Text("Continue With Google")
                                .bold()
                        }
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    }
                    
                    Text("Or")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                    .multilineTextAlignment(.center)
                    
                    Button(action: {
                        // Terms of Service action
                    }) {
                        Text("Use Single Sign-On")
                            .foregroundColor(.blue)
                    }
                    Button(action: {
                        // Terms of Service action
                    }) {
                        Text("Reset Passowrd")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                        
                        NavigationLink(destination: SignupView().navigationBarBackButtonHidden(true)) {
                            Text("Create One")
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

