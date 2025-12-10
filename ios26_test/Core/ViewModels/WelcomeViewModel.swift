//
//  WelcomeViewModel.swift
//  ios26_test
//
//  Created by Christoph Huschenhöfer on 08.12.25.
//

import Foundation
import Combine

@MainActor
final class WelcomeViewModel: ObservableObject {
    
    func getAppName() -> String {
        "testApp"
    }
}
