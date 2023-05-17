//
//  SignUpView.swift
//  FigmaClone
//
//  Created by Lama AL Yousef on 17/05/2023.
//

import SwiftUI

struct SignupView: View {
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
                    Text("Sign Up For Figma")
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
                        Text("Create Account")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                    VStack(spacing: 4) {
                        Text("By Clicking \"Create Account\" or \"Continue With Google\", you agree to our ")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        
                            +
                            Text("Figma TOS")
                                .foregroundColor(.blue)
                                .font(.footnote)
                            +
                            Text(" and ")
                            .foregroundColor(.gray)
                            .font(.footnote)
                            +
                            Text("Privacy Policy")
                                .foregroundColor(.blue)
                                .font(.footnote)
                    }
                    .multilineTextAlignment(.center)
                    
                    Button(action: {
                        // Terms of Service action
                    }) {
                        Text("Use Single Sign-On")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        Text("Already have an account?")
                        
                        NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                            Text("Log in")
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
