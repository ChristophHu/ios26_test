//
//  InfinityFrame.swift
//  ios26_test
//
//  Created by Christoph Huschenhöfer on 08.12.25.
//

import SwiftUI

extension View {
    func infinityFrame() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
