//
//  ios26_testApp.swift
//  ios26_test
//
//  Created by Christoph Huschenhöfer on 04.12.25.
//

import SwiftUI

@main
struct ios26_testApp: App {
    @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
    var body: some Scene {
        WindowGroup {
            AppStartingView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
