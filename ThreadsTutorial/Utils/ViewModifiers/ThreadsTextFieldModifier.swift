//
//  ThreadsTextFieldModifier.swift
//  ThreadsTutorial
//
//  Created by Mankuki_era on 2023/08/21.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .autocapitalization(.none)
    }
}
