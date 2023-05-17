//
//  MirrorView.swift
//  FigmaClone
//
//  Created by Lama AL Yousef on 17/05/2023.
//

import SwiftUI

struct MirrorView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Text("Mirror")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading)
                    
                    Spacer()
                    
                    NavigationLink(destination: AccountView().navigationBarBackButtonHidden(true)) {
                        Image("lemon")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.067, green: 0.066, blue: 0.066))
                .padding(.bottom, 10)
                
                // Body
                ScrollView {
                    // Prototypes section
                    Image("MirrorImage")
                }
                
                // Tab bar
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)) {
                        VStack {
                            Image(systemName: "house")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Home")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: SearchView().navigationBarBackButtonHidden(true)) {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Search")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ActivityView().navigationBarBackButtonHidden(true)) {
                        VStack {
                            Image(systemName: "bell")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Activity")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: MirrorView().navigationBarBackButtonHidden(true)) {
                        VStack {
                            Image(systemName: "play.rectangle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Mirror")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.top, 8)
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}

struct MirrorView_Previews: PreviewProvider {
    static var previews: some View {
        MirrorView()
    }
}
