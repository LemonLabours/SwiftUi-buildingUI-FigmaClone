//
//  IntroView.swift
//  FigmaClone
//
//  Created by Lama AL Yousef on 16/05/2023.
import SwiftUI

struct CarouselSliderView: View {
    @State private var isPresentedLoginView = false
    @State private var isPresentedSignUpView = false

    let carouselData = [
        CarouselItem(imageName: "LoginOrSignImage", title: "Mirror Prototypes from your \ncomputer onto your mobile device"),
        CarouselItem(imageName: "c2", title: "Brows and open your \nteam's design files"),
        CarouselItem(imageName: "c3", title: "View Prototypes and \nshare them with others")
    ]

    @State private var currentIndex = 0

    var body: some View {
        VStack(spacing: 20) {
            Spacer().frame(height: 20) // Move the content slightly higher

            TabView(selection: $currentIndex) {
                ForEach(carouselData.indices, id: \.self) { index in
                    VStack(spacing: 8) {
                        Image(carouselData[index].imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 300)

                        Text(carouselData[index].title)
                            .font(.headline)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 16)
                    }
                    .padding(.vertical, 20)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .padding(.vertical, 2)

            HStack(spacing: 8) {
                ForEach(carouselData.indices, id: \.self) { circleIndex in
                    Circle()
                        .foregroundColor(circleIndex == currentIndex ? .black : .gray)
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.bottom, 28)

            Spacer()

            Button(action: {
                // Navigate to LoginView
                isPresentedLoginView = true
            }) {
                Text("Log In To Figma")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isPresentedLoginView) {
                LoginView()
            }

            Button(action: {
                // Navigate to SignUpView
                isPresentedSignUpView = true
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .sheet(isPresented: $isPresentedSignUpView) {
                SignUpVieww()
            }

            Spacer().frame(height: 20) // Move the content slightly higher
        }
        .padding()
    }
}

struct CarouselItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

struct LoginVieww: View {
    var body: some View {
        LoginView()
    }
}

struct SignUpVieww: View {
    var body: some View {
    SignupView()
    }
}

struct IntroView: View {
    var body: some View {
        CarouselSliderView()
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
