//
//  LoginViewModel.swift
//  ThreadsTutorial
//
//  Created by Mankuki_era on 2023/08/22.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
