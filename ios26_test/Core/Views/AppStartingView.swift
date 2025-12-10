//
//  AppStartingView.swift
//  ios26_test
//
//  Created by Christoph Huschenhöfer on 08.12.25.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject private var viewModel = AppStartingViewModel()
    
    var body: some View {
        Group {
            if viewModel.shouldShowWelcomeView {
                WelcomeView(isShownWelcomeScreen: $viewModel.shouldShowWelcomeView)
            } else {
                HomeTabView()
            }
        }
        .animation(.easeIn, value: viewModel.shouldShowWelcomeView)
    }
}

#Preview {
    AppStartingView()
}
