//
//  LoginViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import Foundation

// MARK: - LoginViewModel

final class LoginViewModel: ObservableObject {
    
    // MARK: - Wrapped properties
    
    @Published var userLogin = User(name: "", isRegistered: false)
    @Published var userName = ""
    
    // MARK: - Public methods
    
    func register() {
        if !userName.isEmpty {
            userLogin.name = userName
            userLogin.isRegistered.toggle()
        }
    }
}
