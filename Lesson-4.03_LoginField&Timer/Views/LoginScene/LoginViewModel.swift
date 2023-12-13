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
    
    @AppStorage(Constants.nameKey) var name = Constants.emptyString
    @AppStorage(Constants.isRegisteredKey) var isRegistered = false
    
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
            name = userName
            isRegistered.toggle()
        }
    }
}

