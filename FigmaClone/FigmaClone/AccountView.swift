//
//  AccountView.swift
//  FigmaClone
//
//  Created by Lama AL Yousef on 17/05/2023.
//

import SwiftUI

struct AccountView: View {
    @State private var isHomeViewActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Button(action: {
                        isHomeViewActive = true // Activate the HomeView
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .padding(.leading)
                    }
                    .frame(width: 60, height: 70)
                    
                    Text("Account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading)
                    
                    Spacer()
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.067, green: 0.066, blue: 0.066))
                .padding(.bottom, 10)
                
                // Body
                ScrollView {
                    VStack(spacing: 16) {
                        HStack {
                            Image("lemon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .clipShape(Circle()) // Shape the image as a circle
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 2)
                                )
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("LemonLabours")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black) // Change the text color
                                
                                Text("Lemon.Labour@gmail.com")
                                    .font(.headline) // Increase the font size
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 16) { // Increase the spacing between each text element
                            Text("Account")
                                .font(.title) // Increase the font size
                                .foregroundColor(.gray)
                            
                            Text("Edit Profile")
                            
                            Text("Change Password")
                            
                            Text("Notifications")
                            
                            Divider()
                            
                            Text("Support")
                            
                            Text("Terms of Service")
                            
                            Text("Privacy Policy")
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .background(
                NavigationLink(
                    destination: HomeView(),
                    isActive: $isHomeViewActive,
                    label: { EmptyView() }
                )
            )
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Use StackNavigationViewStyle to avoid the blue back button appearance
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
