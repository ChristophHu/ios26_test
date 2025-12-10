//
//  WelcomeView.swift
//  ios26_test
//
//  Created by Christoph Huschenhöfer on 07.12.25.
//

import SwiftUI
    
struct WelcomeView: View {
    @StateObject private var viewModel = WelcomeViewModel()
    @Binding var isShownWelcomeScreen: Bool
    
    var body: some View {
        VStack {
            title
            Spacer()
            VStack(spacing: 0) {
                // private extensions
                welcomeImage
                welcomeText
            }
            Spacer()
            getStartedButton
        }
        .padding()
        // extension infinityFrame
        .infinityFrame()
        // extension appTheme + Asset Colors
        .background(Color.appTheme.viewBackground)
    }
}

private extension WelcomeView {
    var title: some View {
        Text(viewModel.getAppName())
            .font(.title)
    }

    var welcomeImage: some View {
        Image("hello")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    var welcomeText: some View {
        Text("Welcome to our App! We're glad to have you here. Explore the features and enjoy your experience.")
            .font(.title3)
            .fontWeight(.medium)
            .padding(8)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.appTheme.secondaryText)
    }
    
    var getStartedButton: some View {
        Button {
            isShownWelcomeScreen = false
        } label: {
            Text("Get Started")
        }
    }
}

#Preview {
    WelcomeView(isShownWelcomeScreen: .constant(true))
}
