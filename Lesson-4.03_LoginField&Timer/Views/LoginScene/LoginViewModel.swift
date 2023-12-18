//
//  LoginViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LoginViewModel

final class LoginViewModel: ObservableObject {
    
    // MARK: - Private properties
    
    private let storageManager = StorageManager.shared
    
    
    // MARK: - Public methods
    
    func register(user: User, from manager: UserManager) {
        storageManager.save(user: user)
        manager.user.isRegistered.toggle()
    }
}

