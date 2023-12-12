//
//  LoginViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LoginViewModel

final class LoginViewModel: ObservableObject {
    
    // MARK: - Wrapped properties
    
    @Published var userLogin = User(
        name: Constants.emptyString,
        isRegistered: false
    )
    @Published var userName = Constants.emptyString
    
    // MARK: - Public properties
    
    var isValid: Bool {
        userName.count > 2 ? true : false
    }
    
    var color: Color {
        isValid ? Color.green : Color.red
    }
    
    // MARK: - Public methods
    
    func register() {
        if !userName.isEmpty && isValid {
            userLogin.name = userName
            userLogin.isRegistered.toggle()
        }
    }
    
    func logout() {
        userName = Constants.emptyString
        userLogin.name = userName
        userLogin.isRegistered.toggle()
    }
    
    // MARK: - Private methods
}

// MARK: - Constants

private extension LoginViewModel {
    enum Constants {
        static let emptyString = ""
    }
}
